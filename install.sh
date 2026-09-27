#!/usr/bin/env bash
# Claude Code Agent Team installer
# https://github.com/dextee/claude-code-agent-team-guide
#
# Installs five model-matched subagents and (optionally) merges recommended
# model settings into Claude Code. Safe to re-run: existing files are backed up,
# and settings you already have are kept unless you pass --force.
#
#   curl -fsSL https://raw.githubusercontent.com/dextee/claude-code-agent-team-guide/main/install.sh | bash
#   curl -fsSL .../install.sh | bash -s -- --agents-only
#
# Options:
#   --agents-only     Install agents, leave settings.json untouched
#   --project DIR     Install agents into DIR/.claude/agents (shared via git) instead of ~/.claude/agents
#   --force           Overwrite settings keys you already have
#   --dry-run         Show what would change, change nothing
#   -h, --help        Show this help

set -euo pipefail

REPO="dextee/claude-code-agent-team-guide"
REF="${AGENT_TEAM_REF:-main}"
RAW="https://raw.githubusercontent.com/${REPO}/${REF}"
AGENTS=(architect implementer worker explorer auditor)

agents_only=0 force=0 dry_run=0 project=""
while [ $# -gt 0 ]; do
  case "$1" in
    --agents-only) agents_only=1 ;;
    --force) force=1 ;;
    --dry-run) dry_run=1 ;;
    --project) project="${2:?--project needs a directory}"; shift ;;
    -h|--help) sed -n '2,19p' "$0" 2>/dev/null | sed 's/^# \{0,1\}//'; exit 0 ;;
    *) echo "Unknown option: $1 (try --help)" >&2; exit 2 ;;
  esac
  shift
done

if [ -t 1 ]; then c1=$'\033[1;36m' c2=$'\033[1;33m' c0=$'\033[0m'; else c1="" c2="" c0=""; fi
say() { printf '%s==>%s %s\n' "$c1" "$c0" "$*"; }
warn() { printf '%s!!%s %s\n' "$c2" "$c0" "$*" >&2; }
run() { if [ "$dry_run" = 1 ]; then echo "   [dry-run] $*"; else "$@"; fi; }

claude_dir="${CLAUDE_CONFIG_DIR:-$HOME/.claude}"
if [ -n "$project" ]; then
  agents_dir="$(cd "$project" && pwd)/.claude/agents"
else
  agents_dir="$claude_dir/agents"
fi
settings_file="$claude_dir/settings.json"
stamp="$(date +%Y%m%d-%H%M%S)"

# Use local files when run from a clone, otherwise download from GitHub.
script_dir=""
if [ -n "${BASH_SOURCE[0]:-}" ] && [ -f "${BASH_SOURCE[0]}" ]; then
  script_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
fi
src_dir=""
if [ -n "$script_dir" ] && [ -d "$script_dir/plugins/agent-team/agents" ]; then
  src_dir="$script_dir/plugins/agent-team"
  say "Using local files from $src_dir"
else
  command -v curl >/dev/null || { echo "curl is required" >&2; exit 1; }
  src_dir="$(mktemp -d)"
  trap 'rm -rf "$src_dir"' EXIT
  mkdir -p "$src_dir/agents"
  say "Downloading agent team from github.com/$REPO ($REF)"
  for a in "${AGENTS[@]}"; do
    curl -fsSL "$RAW/plugins/agent-team/agents/$a.md" -o "$src_dir/agents/$a.md"
  done
  curl -fsSL "$RAW/plugins/agent-team/recommended-settings.json" -o "$src_dir/recommended-settings.json"
fi

# 1. Agents
say "Installing agents into $agents_dir"
run mkdir -p "$agents_dir"
for a in "${AGENTS[@]}"; do
  src="$src_dir/agents/$a.md" dest="$agents_dir/$a.md"
  if [ -f "$dest" ] && cmp -s "$src" "$dest"; then
    echo "   = $a (already up to date)"
    continue
  fi
  if [ -f "$dest" ]; then
    run cp "$dest" "$dest.bak-$stamp"
    echo "   ~ $a (updated, old version saved as $a.md.bak-$stamp)"
  else
    echo "   + $a"
  fi
  run cp "$src" "$dest"
done

# 2. Settings
if [ "$agents_only" = 1 ]; then
  say "Skipping settings (--agents-only)"
elif ! command -v python3 >/dev/null; then
  warn "python3 not found, so settings were not merged. Add these to $settings_file yourself:"
  cat "$src_dir/recommended-settings.json"
else
  say "Merging recommended settings into $settings_file"
  run mkdir -p "$claude_dir"
  if [ -f "$settings_file" ]; then run cp "$settings_file" "$settings_file.bak-$stamp"; fi
  FORCE="$force" DRY="$dry_run" python3 - "$settings_file" "$src_dir/recommended-settings.json" <<'PY'
import json, os, sys
path, rec_path = sys.argv[1], sys.argv[2]
force, dry = os.environ["FORCE"] == "1", os.environ["DRY"] == "1"
try:
    with open(path) as f:
        current = json.load(f)
except FileNotFoundError:
    current = {}
except json.JSONDecodeError as e:
    sys.exit(f"   {path} is not valid JSON ({e}). Fix it, then re-run.")
with open(rec_path) as f:
    rec = json.load(f)

def merge(cur, new, prefix=""):
    for key, value in new.items():
        name = prefix + key
        if isinstance(value, dict) and isinstance(cur.get(key), dict):
            merge(cur[key], value, name + ".")
        elif key not in cur:
            cur[key] = value
            print(f"   + {name} = {json.dumps(value)}")
        elif cur[key] == value:
            print(f"   = {name} (already set)")
        elif force:
            print(f"   ~ {name}: {json.dumps(cur[key])} -> {json.dumps(value)}")
            cur[key] = value
        else:
            print(f"   ! {name} kept as {json.dumps(cur[key])} (use --force to set {json.dumps(value)})")

merge(current, rec)
if not dry:
    with open(path, "w") as f:
        json.dump(current, f, indent=2)
        f.write("\n")
PY
fi

cat <<EOF

$(say "Done.")
Next steps:
  1. Use Claude Code 2.1.280 or later. Restart after updating; check: /agents
     Select /model claude-opus-5-5 and /effort medium. Check active values,
     especially if the installer preserved an older setting or override.
  2. On plans where Fable bills to usage credits, select /model claude-fable-5-1,
     accept the prompt, then /model claude-opus-5-5 to switch back. Until you do, a saved
     Fable advisor is not applied and Fable agents ask for consent when they run.
  3. The advisor is optional: /advisor off disables it. Check /advisor for status.
  4. Try it:  "Use the architect agent to plan X, the implementer to build it,
               then the auditor to review the diff."

Guide: https://github.com/$REPO
EOF
