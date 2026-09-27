<p align="center"><img src="assets/opus-5-5-cover.png" alt="Claude Code Agent Team Guide — Opus 5.5 Edition. Plan. Build. Verify. By Dexter Ng." width="100%"></p>

# Claude Code Agent Team Guide: Which AI Model Should Each Agent Use?

**The Opus 5.5 edition.** A model-selection playbook, five installable agents, and a practical upgrade path for your existing Claude Code setup.

[![Documentation checked](https://img.shields.io/badge/docs_checked-2026--09--27-356b57)](docs/OPUS_5_5_UPGRADE.md)
[![Claude Code](https://img.shields.io/badge/Claude_Code-2.1.280%2B-c57c55)](https://code.claude.com/docs/en/model-config)
[![Edition](https://img.shields.io/badge/edition-1.1.0-333333)](CHANGELOG.md)
[![Installer checks](https://img.shields.io/badge/installer_checks-6_passed-356b57)](tests/test_installer.py)
[![MIT](https://img.shields.io/badge/license-MIT-333333)](LICENSE)

**Start with Opus 5.5 at `medium`.** Use Sonnet 5 for scoped work, Haiku 4.5 for search, and Fable 5.1 for demanding planning or independent review. Escalate when the task warrants it; a larger team is not automatically a better team.

Anthropic recommends Opus 5.5 as the starting point for most workloads, with Fable 5.1 for harder work or when Opus at higher effort still misses your quality bar. The role assignments below are this guide's recommendations, not benchmark results. [Model overview](https://platform.claude.com/docs/en/models/overview)

**[Quick start](#quick-start)** · **[Choose a model](#choose-a-model-for-the-task)** · **[Prices](#model-comparison)** · **[Upgrade](docs/OPUS_5_5_UPGRADE.md)** · **[Setup](SETUP.md)**

## What changed with Opus 5.5?

| | Previous guide: Opus 5 | Updated guide: Opus 5.5 |
|---|---|---|
| Exact model ID | `claude-opus-5` | `claude-opus-5-5` |
| Starting effort | `high` | **`medium`** |
| Input / output per million tokens | $5 / $25 | **$4 / $20** |
| Cache reads per million tokens | $0.50 | **$0.20** |
| Context / maximum standard output | 1M / 128K | 1M / 128K |
| Thinking | Could be disabled in supported configurations | **Always-on adaptive thinking** |

That is **20% lower input/output pricing and 60% lower cache-read pricing**, calculated from published rates. Actual task cost depends on reasoning, retries, cache hits and tool use. [Opus 5.5 specifications](https://platform.claude.com/docs/en/models/opus-5-5/overview) · [Pricing](https://platform.claude.com/docs/en/about-claude/pricing)

Existing users: saved model IDs, effort overrides and custom agents need attention too. Follow the [upgrade checklist](docs/OPUS_5_5_UPGRADE.md).

## Quick start

Requires **Claude Code 2.1.280+**. Update older installations, exit the running session, and reopen it. [Version requirements](https://code.claude.com/docs/en/model-config)

```bash
claude --version
claude update
claude --model claude-opus-5-5 --effort medium
```

Pick one installation method:

| Method | Best for | What changes |
|---|---|---|
| Local installer | Personal setup with explicit settings | Five agents; merges recommended settings |
| Claude Code plugin | Plugin-managed agents | Five namespaced agents; no settings merge |
| Ask Claude | Guided setup | Follows [SETUP.md](SETUP.md) |

**Local installer — macOS, Linux or Windows WSL/Git Bash:**

```bash
git clone https://github.com/dextee/claude-code-agent-team-guide.git
cd claude-code-agent-team-guide
bash install.sh --dry-run
bash install.sh
```

The [installer](install.sh) keeps existing settings, backs up replaced agent files, and supports `--agents-only` or `--project /path/to/repo --agents-only`. Use `--force` only when you intend to replace conflicting recommended settings. Native PowerShell users can use the plugin method.

**Plugin — any supported Claude Code environment:**

```bash
claude plugin marketplace add dextee/claude-code-agent-team-guide
claude plugin install agent-team@dextee
```

Plugin names include a prefix, such as `agent-team:implementer`. Choose one method to avoid duplicate definitions. [Plugin reference](https://code.claude.com/docs/en/plugins-reference)

**Ask Claude:**

```text
Set up my Claude Code agent team by following
https://github.com/dextee/claude-code-agent-team-guide/blob/main/SETUP.md
```

## Choose a model for the task

Judge the completed result, not how confident the model sounds.

| Your task | Start here | Escalate when… |
|---|---|---|
| Locate files, usages or configuration | **Haiku 4.5** explorer | Substantial cross-module reasoning is needed |
| Small fix, tests, documentation or a scoped migration | **Sonnet 5**, `medium` | Ambiguity or repeated failures need stronger diagnosis |
| Feature implementation, debugging or a long build | **Opus 5.5**, `medium` | A reproduced failure persists; try `high`, then consider Fable |
| Architecture with difficult tradeoffs | **Fable 5.1**, `high` architect | Missing constraints or evidence require clarification |
| Independent review before an important merge | **Fable 5.1**, `xhigh` auditor | Findings need reproduction or human specialist judgment |
| Many independent, well-defined changes | **Sonnet 5** workers | Shared files make parallel work unsafe |

Every small edit does not need a Fable planning and audit cycle. Keep those agents available for difficult work; require independent review and evidence for consequential changes.

### The five included agents

| Agent | Pinned model | Effort | Responsibility |
|---|---|---|---|
| [architect](plugins/agent-team/agents/architect.md) | `claude-fable-5-1` | `high` | Plan ambiguous work without editing |
| [implementer](plugins/agent-team/agents/implementer.md) | `claude-opus-5-5` | **`medium`** | Implement and verify the requested behavior |
| [worker](plugins/agent-team/agents/worker.md) | `claude-sonnet-5` | `medium` | Complete one clearly owned work chunk |
| [explorer](plugins/agent-team/agents/explorer.md) | `claude-haiku-4-5-20251001` | Not supported | Find code and return concise references |
| [auditor](plugins/agent-team/agents/auditor.md) | `claude-fable-5-1` | `xhigh` | Independently report supported findings |

Exact IDs target the direct Anthropic service. Other providers may require deployment IDs. Check `/tasks` for the model actually used; restrictions can cause substitution. The read-only agents' prompts prohibit edits, but their Bash access is not a filesystem sandbox. [Subagent configuration](https://code.claude.com/docs/en/sub-agents)

## Model comparison

Standard Anthropic API rates in **USD per million tokens**, excluding extra tool charges and provider-specific pricing. These are not subscription allowances.

| Model | Input | Output | Cache read | Context | Model default effort |
|---|---:|---:|---:|---|---|
| **Opus 5.5** | **$4** | **$20** | **$0.20** | 1M | **`medium`** |
| Fable 5.1 | $10 | $50 | $0.25 | 1M | `high` |
| Sonnet 5 | $2 | $10 | $0.20 | 1M | `high` |
| Haiku 4.5 | $1 | $5 | $0.10 | 200K | Not supported |

Sources: [current models](https://platform.claude.com/docs/en/models/overview) and [pricing](https://platform.claude.com/docs/en/about-claude/pricing). Our worker deliberately uses `medium`, below Sonnet's model default.

**Fast mode is separate.** Opus 5.5 fast mode costs **$8/$40**, versus $4/$20 standard, with up to 2.5× higher output speed. Subscription use draws on usage credits; access and provider support vary. Check `/fast` before a long run. [Fast mode](https://code.claude.com/docs/en/fast-mode)

## Effort: start lower, measure, then escalate

Opus 5.5 can spend more reasoning tokens than Opus 5 at the same effort label. Carrying `xhigh` or `max` forward can increase cost and latency. Start at `medium`, try `high` for difficult failures, and reserve deeper settings for measured improvements. Test `low` on lightweight tasks. [Opus 5.5 prompting](https://platform.claude.com/docs/en/build-with-claude/prompt-engineering/prompting-claude-opus-5-5)

The [preset](plugins/agent-team/recommended-settings.json) uses per-model effort rather than one global level:

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

Explicit session or environment overrides can take precedence. Check `/effort` after changing settings. Haiku has no effort control, so the explorer sets none. [Configuration](https://code.claude.com/docs/en/model-config)

## Optional advisor: Opus builds, Fable advises

The preset retains this guide's Opus-plus-Fable workflow. For short or cost-sensitive tasks, use `/advisor off`; the five agents remain usable.

```text
/model claude-opus-5-5
/effort medium
/advisor claude-fable-5-1
```

The experimental advisor sees the conversation and is consulted when the main model chooses. It adds usage and does not guarantee review of every change. Opus 5.5 accepts Fable and Opus 5-or-later advisors; Fable 5.1 accepts only Fable 5.1.

Where Fable requires usage-credit consent, select `/model claude-fable-5-1` and accept it yourself, then return to Opus 5.5. Confirm `/advisor` status. The advisor works through Anthropic's service, not Bedrock, Google Cloud, Foundry or Claude Platform on AWS. [Advisor documentation](https://code.claude.com/docs/en/advisor)

## Workflow recipes

### Build a feature

For an ambiguous change, use the architect first. Skip that step when the requirements are already clear.

```text
Use explorer to map billing retries and existing tests.
Use architect to plan against these acceptance criteria: [criteria].
Use implementer to build the agreed plan and run relevant checks.
Use auditor to review the diff against those criteria.
Report completed work, verification evidence and any unresolved blocker.
```

Prefix names with `agent-team:` for plugin installations.

### Investigate a hard bug

Give Opus the failing input, expected behavior and reproduction command. Ask it to prove the root cause and verify the repair. Escalate effort or use Fable when the evidence shows the current approach is failing.

### Run a large refactor

Agree on interfaces, give each Sonnet worker distinct files, then integrate and test the combined result. Request independent review. If using `isolation: worktree`, verify the worker's base commit: its default base can differ from your current branch. [Worktree behavior](https://code.claude.com/docs/en/sub-agents)

### Choose the coordination method

| Method | Use it when… |
|---|---|
| Named subagent | A bounded job can return one result |
| Advisor | A long task benefits from occasional guidance |
| `opusplan` | You want Opus planning followed by Sonnet implementation |
| Agent team | Independent full sessions need to coordinate |

Agent teams remain experimental. Start small, assign separate ownership, and budget for each teammate's conversation. [Agent teams](https://code.claude.com/docs/en/agent-teams)

## Measure quality and cost on your own work

Choose five representative tasks: a small fix, feature, refactor, difficult bug and review. Keep starting commits and acceptance criteria fixed. Compare Opus 5.5 `medium` with your previous setup; try `high` where useful.

Record **pass/fail, human rework, elapsed time, total tokens and billed cost**, including retries and failed runs. Optimize for a verified completed task, not the cheapest response. [Choosing a model](https://platform.claude.com/docs/en/about-claude/models/choosing-a-model)

For unattended work, track explicit completion criteria. A text-only turn or confident summary is not proof that the task is done. Wait for running checks, collect results and bound automatic retries. [Unattended-run guidance](https://platform.claude.com/docs/en/build-with-claude/prompt-engineering/prompting-claude-opus-5-5)

## Common questions

**Does `opus` mean Opus 5.5?** On current Claude Code with the direct Anthropic service, yes. Provider mappings and overrides differ; this package pins the implementer to the exact model.

**Should Fable disappear?** No. Keep it for demanding planning and independent review; use Opus 5.5 for the everyday build. Measure whether the extra cost helps.

**Why am I still using an older model?** A resumed session, saved setting, provider deployment or environment override can retain it. Check `/model`, `/effort` and `/tasks`. [Precedence](https://code.claude.com/docs/en/model-config)

**Will reinstalling overwrite preferences?** Not by default. The installer reports conflicting values it preserves. Follow the [upgrade checklist](docs/OPUS_5_5_UPGRADE.md).

**Does this migrate an API app too?** No. See the [API checklist](docs/OPUS_5_5_UPGRADE.md#api-applications-have-additional-changes) for request and response changes.

## Sources and maintenance

Rechecked **27 September 2026** against official documentation linked beside each factual section. Availability varies by account, provider and CLI version. Source checks do not certify application performance.

- [Opus 5.5: what's new](https://platform.claude.com/docs/en/models/opus-5-5/whats-new-opus-5-5)
- [Official migration guide](https://platform.claude.com/docs/en/models/opus-5-5/migration-guide)
- [Changelog](CHANGELOG.md) · [Contributing](CONTRIBUTING.md) · [Installer checks](tests/test_installer.py)

## About the author

**[Dexter Ng](https://github.com/dextee)** builds and leads technology businesses across AI systems, cybersecurity and data privacy at **[VYR WORK](https://vyrwork.com/)**, Singapore.

[LinkedIn](https://www.linkedin.com/in/dexterng) · [GitHub](https://github.com/dextee) · [Singapore AI Governance Readiness Checklist](https://github.com/dextee/singapore-ai-governance-checklist)

If this guide helps your team, star the repository or contribute a source-backed improvement.

Independent community guide; not affiliated with or endorsed by Anthropic. Claude and its model names are Anthropic trademarks. [MIT license](LICENSE). [Artwork provenance](docs/ARTWORK.md).
