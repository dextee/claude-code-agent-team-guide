# Set up the Claude Code agent team (instructions for Claude)

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
cat ~/.claude/settings.json 2>/dev/null
```

- If Claude Code is older than **2.1.257**, tell the user that Fable 5.1 needs 2.1.257 or later, and suggest `claude update`. Continue with the setup either way.
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
cat ~/.claude/settings.json
```

Confirm that all five agent files exist (`architect`, `implementer`, `worker`, `explorer`, `auditor`) and that the settings contain what the installer reported. If python3 was missing, merge the printed settings into `~/.claude/settings.json` yourself, keeping any keys the user already had.

## 4. Tell the user what's left

Report what was installed and what was changed, including the paths of any backup files. Then pass on these notes:

1. **Restart Claude Code**, or open `/agents`, so the new agents load.
2. **Fable consent.** On plans where Fable bills to usage credits, the user must run `/model fable` once and accept the prompt before the Fable advisor works. Afterwards they switch back with `/model opus`. You can't accept this prompt for them.
3. **Third-party providers (option D).** Aliases may resolve to older models there. To pin models, set `ANTHROPIC_DEFAULT_FABLE_MODEL`, `ANTHROPIC_DEFAULT_OPUS_MODEL`, `ANTHROPIC_DEFAULT_SONNET_MODEL` and `ANTHROPIC_DEFAULT_HAIKU_MODEL` to the provider's model IDs. Don't set `advisorModel`.
4. **How to use it:** "Use the architect agent to plan X, the implementer to build it, then the auditor to review the diff."

## What gets installed

| Agent | Model | Job |
|---|---|---|
| `architect` | Fable 5.1 | Read-only planner for ambiguous or high-stakes work |
| `implementer` | Opus 5 | Builds approved plans end to end, with tests |
| `worker` | Sonnet 5 | One well-scoped chunk of work, run several in parallel |
| `explorer` | Haiku 4.5 | Fast, cheap, read-only codebase search |
| `auditor` | Fable 5.1 | Independent, evidence-only review before merge |

Recommended settings, merged without overwriting existing values:

```json
{
  "model": "opus",
  "effortLevel": "high",
  "advisorModel": "fable",
  "env": { "CLAUDE_CODE_SUBAGENT_MODEL": "sonnet" }
}
```

## Uninstall

```bash
rm ~/.claude/agents/{architect,implementer,worker,explorer,auditor}.md
# then remove model / effortLevel / advisorModel / CLAUDE_CODE_SUBAGENT_MODEL
# from ~/.claude/settings.json, or restore the settings.json.bak-* backup
```
