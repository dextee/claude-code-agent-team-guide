# Upgrade the agent team to Opus 5.5

Updated 27 September 2026. Edition 1.1.0 replaces the original Opus 5 setup.

## Existing Claude Code users

1. Check `claude --version`. Opus 5.5 requires **2.1.280+**. Run `claude update` if needed, then exit and reopen Claude Code. [Version requirements](https://code.claude.com/docs/en/model-config)
2. Update this repository or your installed plugin. Choose your existing installation method to avoid duplicate agents.
3. For a local install, run `bash install.sh --dry-run`, then `bash install.sh`. Conflicting settings are preserved; inspect each `kept` message.
4. Select `/model claude-opus-5-5`, then `/effort medium`. Review old `ANTHROPIC_MODEL`, family-model overrides and `CLAUDE_CODE_EFFORT_LEVEL` if active values differ.
5. Check `implementer.md`: `model: claude-opus-5-5`, `effort: medium`. Its plugin name is `agent-team:implementer`.
6. Confirm `/agents`, `/model`, `/effort` and `/advisor`. Try a small task and inspect `/tasks` for the delegated model and effort.

The preset adds per-model effort settings and retains a Fable advisor. It does not remove old keys or disable an existing advisor. Use `/advisor off` if you do not want advisor calls. Backups appear as `.bak-<timestamp>` beside changed files.

For Bedrock, Google Cloud, Foundry or gateways, map the pinned IDs to the deployment IDs actually served. Use `--agents-only`, adapt the definitions, and do not blindly apply the direct-Anthropic preset.

## API applications have additional changes

| Previous assumption | Migration check |
|---|---|
| Thinking can be disabled or manually budgeted | Remove unsupported thinking modes; control depth with effort |
| `tool_choice: any` or a forced named tool works | Use supported automatic selection; evaluate strict schemas or structured output |
| Thinking blocks survive edits to earlier context | Preserve blocks unchanged and respect conversation binding |
| The old computer tool works everywhere | On Claude API and Google Cloud, migrate `computer_20251124` to `computer_toolset_20260801`, including the agent loop |
| Progress arrives as ordinary text between calls | Handle documented progress-update thinking blocks and display options |

Read the [official migration guide](https://platform.claude.com/docs/en/models/opus-5-5/migration-guide) for provider exceptions and exact request shapes. Test these paths before switching production traffic.

## Verify the outcome

Repeat a task from the old setup with identical inputs. Compare correctness, rework, time and total billed cost. Keep a rollback copy of settings. A successful installation proves files were installed, not that a model is available to your account or better for your workload.
