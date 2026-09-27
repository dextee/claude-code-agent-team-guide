# Set up the Claude Code agent team — Opus 5.5 edition

> **For humans:** on any new machine or server, open Claude Code and say:
>
> ```text
> Set up my Claude Code agent team by following https://github.com/dextee/claude-code-agent-team-guide/blob/main/SETUP.md
> ```
>
> Claude reads this file and does the rest. Prefer to do it yourself? Run:
>
> ```bash
> curl -fsSL https://raw.githubusercontent.com/dextee/claude-code-agent-team-guide/main/install.sh | bash
> ```

---

**Claude, when a user asks you to set up their agent team from this file, follow these steps in order. Show the user each command's output and don't skip the checks.**

## 1. Check the environment

Run these and read the results:

```bash
claude --version
command -v curl python3
ls ~/.claude/agents 2>/dev/null
# Inspect model, modelSettings, effortLevel, advisorModel and model-related
# environment overrides locally. Do not print credentials or unrelated settings.
```

- Opus 5.5 requires **2.1.280+**. Update an older CLI with `claude update`, then exit and reopen it before testing the new model. Do not claim a working Opus 5.5 setup on an older CLI.
- If `python3` is missing, the installer still installs the agents but prints the settings for you to merge by hand in step 3.
- Note any existing settings. The installer keeps the user's own values unless they explicitly ask to overwrite them.

## 2. Pick the install type

Decide from what you found and what the user said. If it's unclear, use option A.

| Situation | Command |
|---|---|
| **A. Personal machine or server (default).** Agents for every project, plus recommended model settings | `curl -fsSL https://raw.githubusercontent.com/dextee/claude-code-agent-team-guide/main/install.sh \| bash` |
| **B. Agents only.** Keep the user's model settings exactly as they are | `curl -fsSL https://raw.githubusercontent.com/dextee/claude-code-agent-team-guide/main/install.sh \| bash -s -- --agents-only` |
| **C. One project, shared with a team via git.** Agents go in the repo's `.claude/agents/` | `curl -fsSL https://raw.githubusercontent.com/dextee/claude-code-agent-team-guide/main/install.sh \| bash -s -- --project . --agents-only` |
| **D. Bedrock, Google Cloud, Foundry or Claude Platform on AWS.** The advisor tool isn't available there | Use option B, then see step 4 |

Only add `--force` if the user explicitly asks to replace their existing model settings. Run with `--dry-run` first when the user wants to preview changes.

**Alternative, the plugin route.** It installs the agents only, and they update when the plugin updates. Agents appear with an `agent-team:` prefix, e.g. `agent-team:auditor`:

```bash
claude plugin marketplace add dextee/claude-code-agent-team-guide
claude plugin install agent-team@dextee
```

## 3. Verify

```bash
ls ~/.claude/agents          # or <project>/.claude/agents for option C
# Inspect relevant model/effort/advisor keys locally; keep unrelated values private.
```

Inspect only the relevant keys from settings rather than printing unrelated content. Confirm all five agent files exist (`architect`, `implementer`, `worker`, `explorer`, `auditor`). The implementer must specify `claude-opus-5-5` and `effort: medium`. Check that settings contain what the installer reported. If Python was missing, merge the recommended keys while preserving existing choices. For an existing installation, follow [the upgrade checklist](docs/OPUS_5_5_UPGRADE.md).

## 4. Tell the user what's left

Report what was installed and what was changed, including the paths of any backup files. Then pass on these notes:

1. **Restart Claude Code**, or open `/agents`, so the new agents load.
2. **Fable consent.** Where required, the user selects `/model claude-fable-5-1` and accepts usage-credit billing before enabling the Fable advisor. They then select `/model claude-opus-5-5` and `/effort medium`. Do not accept billing consent for them. The advisor is optional; `/advisor off` disables it.
3. **Third-party providers (option D).** The files contain exact Anthropic model IDs. Map them to provider deployment IDs in each agent definition and verify availability. Do not apply the direct-Anthropic settings preset or configure its advisor.
4. **How to use it:** "Use the architect agent to plan X, the implementer to build it, then the auditor to review the diff."

## What gets installed

| Agent | Model | Job |
|---|---|---|
| `architect` | Fable 5.1 | Read-only planner for ambiguous or high-stakes work |
| `implementer` | Opus 5.5, medium effort | Builds approved plans end to end, with tests |
| `worker` | Sonnet 5 | One well-scoped chunk of work, run several in parallel |
| `explorer` | Haiku 4.5 | Fast, cheap, read-only codebase search |
| `auditor` | Fable 5.1 | Independent, evidence-only review before merge |

Recommended settings, merged without overwriting existing values:

```json
{
  "model": "claude-opus-5-5",
  "modelSettings": {
    "claude-opus-5-5": { "effortLevel": "medium" },
    "claude-fable-5-1": { "effortLevel": "high" }
  },
  "advisorModel": "claude-fable-5-1",
  "env": { "CLAUDE_CODE_SUBAGENT_MODEL": "claude-sonnet-5" }
}
```

## Uninstall

```bash
rm ~/.claude/agents/{architect,implementer,worker,explorer,auditor}.md
# Restore only the model/advisor/effort keys this install added or changed,
# using the backup as a reference. Keep unrelated settings and newer edits.
```
