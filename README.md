<p align="center"><img src="assets/banner.svg" alt="Claude Code Agent Team Guide: Fable 5.1 plans and audits, Opus 5 builds, Sonnet 5 runs parallel workers, Haiku 4.5 explores" width="100%"></p>

# Claude Code Agent Team Guide: Which AI Model Should Each Agent Use?

> **Run your Claude Code agents like a real team.** A source-checked guide to matching **Claude Fable 5.1, Opus 5, Sonnet 5 and Haiku 4.5** to each agent's job, plus a ready-made five-agent team you can install on any machine with one command.

![Last verified](https://img.shields.io/badge/verified-2026--09--22-blue)
![Claude Code](https://img.shields.io/badge/Claude%20Code-v2.1.257%2B-orange)
![License: MIT](https://img.shields.io/badge/license-MIT-green)
![PRs welcome](https://img.shields.io/badge/PRs-welcome-brightgreen)
[![GitHub stars](https://img.shields.io/github/stars/dextee/claude-code-agent-team-guide?style=social)](https://github.com/dextee/claude-code-agent-team-guide/stargazers)

**TL;DR:** Plan and audit with **Fable 5.1**, build with **Opus 5**, run parallel and routine work on **Sonnet 5**, and send codebase search to **Haiku 4.5**. Tune **effort** before you switch models. Use the **advisor tool** so your builder consults Fable only at decision points.

---

## Table of contents

- [Install the agent team (one command)](#install-the-agent-team-one-command)
- [Why model choice matters now](#why-model-choice-matters-now)
- [Claude model comparison (2026)](#claude-model-comparison-2026)
- [The recommended agent team](#the-recommended-agent-team)
- [Effort levels: the cheapest upgrade you're not using](#effort-levels-the-cheapest-upgrade-youre-not-using)
- [Advisor tool: Opus builds, Fable advises](#advisor-tool-opus-builds-fable-advises)
- [Subagents vs agent teams vs opusplan vs advisor](#subagents-vs-agent-teams-vs-opusplan-vs-advisor)
- [Workflow recipes](#workflow-recipes)
- [Cost control checklist](#cost-control-checklist)
- [Common mistakes](#common-mistakes)
- [FAQ](#faq)
- [Sources](#sources)
- [About the author](#about-the-author)

---

## Install the agent team (one command)

Pick whichever suits you. All three install the same five agents.

**1. Ask Claude to do it.** This works on any machine or server. Open Claude Code and say:

```text
Set up my Claude Code agent team by following https://github.com/dextee/claude-code-agent-team-guide/blob/main/SETUP.md
```

Claude reads [`SETUP.md`](SETUP.md), checks your environment, installs everything, verifies it, and tells you what changed.

**2. One-line installer.** Installs the agents plus the recommended model settings:

```bash
curl -fsSL https://raw.githubusercontent.com/dextee/claude-code-agent-team-guide/main/install.sh | bash
```

It's safe to re-run. Your existing settings are kept, changed files are backed up, and you can preview first with `--dry-run`. Add `--agents-only` to leave your settings alone, or `--project .` to install into the current repo so your team gets the agents through git. Read [`install.sh`](install.sh) before you run it; it's short.

**3. Claude Code plugin.** Agents only, and they update when the plugin updates:

```bash
claude plugin marketplace add dextee/claude-code-agent-team-guide
claude plugin install agent-team@dextee
```

Plugin agents appear with a prefix, e.g. `agent-team:auditor`.

| Agent | Model | Job |
|---|---|---|
| [`architect`](plugins/agent-team/agents/architect.md) | Fable 5.1 | Read-only planner for ambiguous or high-stakes work |
| [`implementer`](plugins/agent-team/agents/implementer.md) | Opus 5 | Builds approved plans end to end, with tests |
| [`worker`](plugins/agent-team/agents/worker.md) | Sonnet 5 | One well-scoped chunk of work; run several in parallel |
| [`explorer`](plugins/agent-team/agents/explorer.md) | Haiku 4.5 | Fast, cheap, read-only codebase search |
| [`auditor`](plugins/agent-team/agents/auditor.md) | Fable 5.1 | Independent, evidence-only review before merge |

Then just ask for them by name:

```text
Use the architect agent to plan the payment-retry feature, then the implementer to build it,
then the auditor to review the diff before I merge.
```

---

## Why model choice matters now

Claude Code no longer has one "best" model. Anthropic ships a family of models with very different prices and behavior, and Claude Code lets you give a **different model to every subagent, teammate and advisor**. Run everything on the most expensive model and you burn budget on file searches. Run everything on the cheapest and you get shallow plans and missed bugs.

The fix is the same as with a human team: **seniors review and decide, mid-level people build, juniors fetch and search.**

---

## Claude model comparison (2026)

Anthropic API list prices, per million tokens (MTok).

| Model | Alias in Claude Code | Input / Output | Cache read | Context | Best at |
|---|---|---|---|---|---|
| **Claude Fable 5.1** | `fable` (also `best`) | $10 / $50 | $0.25 | 1M | The hardest and longest work: architecture, root-cause debugging, code review, large refactors, long autonomous sessions |
| **Claude Opus 5** | `opus` | $5 / $25 | $0.50 | 1M | Long agentic coding at half Fable's price. [Checks its own work without being told to](https://platform.claude.com/docs/en/build-with-claude/prompt-engineering/prompting-claude-opus-5). Default model on Max, Team Premium, Enterprise and the API |
| **Claude Sonnet 5** | `sonnet` | $2 / $10 | $0.20 | 1M (always) | Daily coding, parallel workers, running tests. Default on Pro and Team Standard |
| **Claude Haiku 4.5** | `haiku` | $1 / $5 | $0.10 | 200K | Fast, cheap search, exploration, summaries and simple lookups |

Key facts:

- **Fable is never the default.** Pick it with `/model fable` or `claude --model fable`. Fable 5.1 needs Claude Code **v2.1.257 or later**.
- **Fable 5.1 cache reads cost 2.5% of its input price** ($0.25/MTok), not the usual 10%. Long cached sessions on Fable cost less than the headline price suggests.
- **1M context has no premium at API rates** on Claude 4.6 and later models. A 900K-token request bills at the same rate as a 9K one.
- **On some subscription plans, Fable bills to usage credits** instead of your plan's limits. The `/model` picker shows "Requires usage credits" when that applies.
- **Fast mode** (`/fast`) works on Opus 5 and Opus 4.8 only. It's up to 2.5× faster and costs $10 / $50, billed to usage credits on subscriptions.
- Opus 4.7 and later use a newer tokenizer that produces about 30% more tokens for the same text. Compare cost per *finished task*, not per token.

---

## The recommended agent team

| Role | Model | Effort | Why |
|---|---|---|---|
| **Lead (main session)** | Opus 5 (`opus`) | `high` | Best capability for the price when driving a long build |
| **Advisor** to the lead | Fable 5.1 (`/advisor fable`) | n/a | Consulted only at decision points, so you pay Fable rates a few times rather than every turn |
| **Architect** subagent | Fable 5.1 (`fable`) | `high` | Plans ambiguous or high-stakes work. Read-only |
| **Implementer** subagent | Opus 5 (`opus`) | `high` | Writes the code and tests |
| **Worker** subagent | Sonnet 5 (`sonnet`) | `medium` | Parallel, well-specified chunks, tests and migrations |
| **Explorer** subagent | Haiku 4.5 (`haiku`) | n/a (Haiku doesn't support effort) | Finds files, reads code and summarises. The most frequent job, so it should be the cheapest |
| **Auditor** subagent | Fable 5.1 (`fable`) | `xhigh` | Fresh-context review before merge, reporting only findings backed by evidence |

Why a *separate* auditor? Anthropic's [Fable 5 prompting guide](https://platform.claude.com/docs/en/build-with-claude/prompt-engineering/prompting-claude-fable-5) notes that separate, fresh-context verifier subagents "tend to outperform self-critique". The session that wrote the code is the worst one to review it.

---

## Effort levels: the cheapest upgrade you're not using

Effort controls how much the model thinks. You can set it per session, per model or per subagent, and it often matters more than which model you pick.

| Level | Use it for |
|---|---|
| `low` | Short, scoped, latency-sensitive tasks |
| `medium` | Cost-sensitive work that can give up a little intelligence |
| `high` | **The default** on every current model except Opus 4.7. The right place to start |
| `xhigh` | Deep reasoning: audits and tricky multi-file changes |
| `max` | Only when you've measured that it helps. Prone to overthinking |

Supported on Fable, Opus and Sonnet. **Haiku 4.5 does not support effort.**

```bash
/effort xhigh                 # in a session
claude --effort medium        # one session
CLAUDE_CODE_EFFORT_LEVEL=low  # environment
```

Per-model effort in `~/.claude/settings.json`:

```json
{
  "effortLevel": "high",
  "modelSettings": {
    "claude-fable-5-1": { "effortLevel": "xhigh" }
  }
}
```

In a subagent file, add `effort: medium` (or any level) to the frontmatter.

> **Pro tip:** Anthropic's [Fable 5.1 prompting guide](https://platform.claude.com/docs/en/build-with-claude/prompt-engineering/prompting-claude-fable-5-1) says that at `medium`, "results roughly match Claude Fable 5 at lower cost". At `low`, Fable 5.1 "is often competitive with Claude Opus and Claude Sonnet models on cost per task while scoring higher." Try lowering Fable's effort before you switch to a cheaper model.

---

## Advisor tool: Opus builds, Fable advises

The advisor tool lets your main model consult a stronger model at key moments: before committing to an approach, when an error keeps coming back, and before declaring a task done. The advisor sees the full conversation, and you pay advisor rates only when it's called.

```bash
/advisor fable            # set it and save it as your default
claude --advisor fable    # this session only
/advisor off              # turn it off
```

> **One-time step for Fable:** on plans where Fable bills to usage credits, run `/model fable` once and accept the prompt first. Until you do, Claude Code won't save or apply Fable as the advisor.

**Valid pairings.** The advisor must be at least as capable as the main model:

| Main model | Accepted advisors |
|---|---|
| Haiku 4.5 | Fable, Opus, Sonnet |
| Sonnet 5 | Fable, Opus 4.7+, Sonnet 5 |
| **Opus 5** | **Fable, Opus 5** |
| Fable 5.1 | Fable 5.1 only |

Recommended setups:

- **Opus 5 + Fable advisor.** The default in this guide: Opus does the typing, Fable steers.
- **Sonnet 5 + Fable advisor.** The strongest budget option: Fable's guidance at decision points without running Fable all session.
- **Haiku 4.5 + Opus advisor.** The cheapest main model with strong planning.

It requires the Anthropic API or a Claude subscription; it isn't available on Bedrock, Google Cloud, Foundry or Claude Platform on AWS. Turning the advisor on or off doesn't invalidate your prompt cache, and subagents inherit it.

---

## Subagents vs agent teams vs opusplan vs advisor

| Approach | When the stronger model runs | Best for | Token cost |
|---|---|---|---|
| **Subagent with `model:`** | For the whole delegated subtask | Focused jobs that just return a result | Lower |
| **Agent team** (experimental) | Each teammate is a full session | Parallel research, review, competing hypotheses | Much higher |
| **`opusplan`** | Opus in plan mode, then Sonnet to execute | Plan-heavy work on a budget. It does **not** use Fable | Low to medium |
| **Advisor tool** | At decision points mid-task | Long tasks where plan quality decides the outcome | Low overhead |
| **`/model` switch** | From the next request on | Manual phases (plan in Fable, build in Opus) | Re-reads context uncached |

**Agent teams** are turned on with `CLAUDE_CODE_EXPERIMENTAL_AGENT_TEAMS=1`. Start with **3–5 teammates**, give each one its own files so they don't overwrite each other, and name models in your spawn prompt:

```text
Spawn three teammates to review PR #142 using Sonnet:
one on security, one on performance, one on test coverage.
Have them report findings, then synthesise.
```

Each teammate's model comes from the first of these that's set: the model named in your prompt, the subagent definition's `model`, `CLAUDE_CODE_SUBAGENT_MODEL`, then the lead's model. Teammates inherit the lead's effort level.

---

## Workflow recipes

### 1. Feature build (the everyday loop)

```text
1. /model opus  +  /advisor fable
2. "Use the explorer agent to map everything that touches billing retries."
3. "Use the architect agent to propose a plan. Wait for my approval."
4. "Use the implementer agent to build the approved plan, with tests."
5. "Use the auditor agent to review the diff against the plan."
```

### 2. Hard bug or outage

Switch the main session to Fable with `/model fable` at effort `high`. Describe the **outcome** you want ("find the root cause and prove it"), not the steps. Fable investigates before acting and checks its own work without reminders.

### 3. Large refactor across many files

The architect (Fable) splits the work into self-contained chunks, several **workers** (Sonnet) take one chunk each, and the auditor (Fable, `xhigh`) reviews the combined diff. Give each worker different files.

> Want each worker in its own git worktree? Add `isolation: worktree` to `worker.md`. Note that the worktree branches from your **default branch**, not your current `HEAD`. Commit or merge the plan's base first, or the workers won't see it.

### 4. Parallel code review

Run an agent team of three Sonnet reviewers, each with one lens (security, performance, tests), and have the Opus lead synthesise their findings. For a deeper check, run [`/code-review high`](https://code.claude.com/docs/en/code-review#review-a-diff-locally), or [`/code-review ultra`](https://code.claude.com/docs/en/ultrareview) for a multi-agent review in the cloud.

### 5. Budget mode

Use `/model sonnet` plus `/advisor fable`, with the explorer on Haiku. You keep most of the quality of Fable-led planning at a fraction of the cost.

---

## Cost control checklist

- [ ] Send codebase search to the **Haiku** explorer instead of letting searches run on your main model.
- [ ] Set `CLAUDE_CODE_SUBAGENT_MODEL=sonnet` so general-purpose subagents without their own `model:` don't run on your most expensive model. (It doesn't change Claude Code's built-in Explore and Plan subagents, which follow your main model. Use the `explorer` agent for cheap searches.)
- [ ] Try **lower effort** on the strong model before trying a weaker model.
- [ ] Use the **advisor** instead of running Fable for the whole session.
- [ ] Turn fast mode on at the **start** of a conversation. Turning it on mid-conversation bills the whole context once at fast-mode input rates.
- [ ] Avoid unnecessary `/model` switches mid-session. Caches are per model, so a switch re-reads the context uncached.
- [ ] Watch `/usage`. On plans where Fable uses usage credits, **headless (`-p`) and Agent SDK runs bill Fable without a consent prompt**.
- [ ] Keep agent teams small (3–5). Token cost grows with every teammate.

---

## Common mistakes

1. **Running every subagent on Opus or Fable.** Most subagent work is reading files, and Haiku does that for a fraction of the price.
2. **Letting the builder audit itself.** Use a fresh-context auditor.
3. **Expecting `opusplan` to use Fable.** It plans with Opus and executes with Sonnet. For Fable planning, use the architect subagent, the advisor or `/model fable`.
4. **Pairing a Fable main model with an Opus advisor.** It's rejected: Fable 5.1 accepts only a Fable 5.1 advisor.
5. **Setting `effort` on Haiku.** Haiku 4.5 doesn't support effort, so the setting does nothing.
6. **Using `max` effort everywhere.** It can overthink and it costs more. Measure first.
7. **Over-prescriptive prompts for Fable.** Describe the outcome and let it plan. Drop the "remember to run the tests" reminders; it checks its own work.

---

## FAQ

### What is the best Claude model for Claude Code in 2026?
**Claude Fable 5.1** for the hardest work, and **Claude Opus 5** for the best capability per dollar on most coding. Most teams do best by mixing them: Opus builds, Fable plans and reviews.

### Is Fable 5.1 better than Opus 5 for coding?
Fable 5.1 is the most capable generally available Claude model in Claude Code. It gains most on long, ambiguous, multi-hour tasks, code review and debugging. It costs twice as much as Opus 5, so for well-specified implementation work Opus 5 is usually better value.

### How do I use a different model for each subagent in Claude Code?
Add `model: haiku` (or `sonnet`, `opus`, `fable`, a full model ID, or `inherit`) to the YAML frontmatter of `.claude/agents/<name>.md`. Claude Code checks, in order: a model named for that specific call, then the frontmatter, then `CLAUDE_CODE_SUBAGENT_MODEL`, then the main session's model.

### How do I set up the same agent team on a new server?
Tell Claude Code: *"Set up my Claude Code agent team by following https://github.com/dextee/claude-code-agent-team-guide/blob/main/SETUP.md"*, or run the [one-line installer](#install-the-agent-team-one-command).

### What is the Claude Code advisor tool?
An experimental feature that lets your main model consult a stronger model at decision points. Turn it on with `/advisor fable`, `claude --advisor fable`, or `"advisorModel": "fable"` in your settings.

### What does `opusplan` do?
It uses Opus in plan mode and switches to Sonnet to execute. It doesn't involve Fable.

### When should I use Haiku 4.5?
For search, exploration, summaries and other short, low-risk jobs, especially as a subagent that runs many times per session.

### Which effort level should I use?
Start at `high`, the default. Use `xhigh` for audits and hard multi-file changes, and `medium` or `low` for routine or high-volume work. Use `max` only when you've measured that it helps.

### Does the 1M context window cost extra?
Not at API rates. On Claude 4.6 and later models the full 1M window bills at standard rates. On some subscription plans, 1M usage on older 4.6 models may need usage credits; Sonnet 5 never does.

### Can I use these agents with Bedrock or Google Cloud?
Yes, but aliases may resolve to older models there, and the advisor tool and fast mode aren't available. Pin models with `ANTHROPIC_DEFAULT_FABLE_MODEL`, `ANTHROPIC_DEFAULT_OPUS_MODEL`, `ANTHROPIC_DEFAULT_SONNET_MODEL` and `ANTHROPIC_DEFAULT_HAIKU_MODEL`, and install with `--agents-only`.

---

## Sources

Every fact here was checked against official documentation on **2026-09-22**. Models and prices change often, so please open an issue or PR if something is out of date.

- Claude Code: [Model configuration](https://code.claude.com/docs/en/model-config)
- Claude Code: [Subagents](https://code.claude.com/docs/en/sub-agents)
- Claude Code: [Agent teams](https://code.claude.com/docs/en/agent-teams)
- Claude Code: [Advisor tool](https://code.claude.com/docs/en/advisor)
- Claude Code: [Fast mode](https://code.claude.com/docs/en/fast-mode)
- Claude Code: [Code Review](https://code.claude.com/docs/en/code-review)
- Claude Code: [Plugins reference](https://code.claude.com/docs/en/plugins-reference)
- Claude API: [Pricing](https://platform.claude.com/docs/en/about-claude/pricing)
- Claude API: [Prompting Claude Fable 5.1](https://platform.claude.com/docs/en/build-with-claude/prompt-engineering/prompting-claude-fable-5-1)
- Claude API: [Prompting Claude Fable 5](https://platform.claude.com/docs/en/build-with-claude/prompt-engineering/prompting-claude-fable-5)
- Anthropic: [The advisor strategy](https://claude.com/blog/the-advisor-strategy)

---

## About the author

<table>
  <tr>
    <td>
      <b>Dexter Ng</b> (<a href="https://github.com/dextee">@dextee</a>)<br>
      Builds and leads technology businesses across AI systems, cybersecurity and data privacy, at <a href="https://vyrwork.com/">VYR WORK</a> (AI Workflow Automation), Singapore.<br><br>
      <a href="https://www.linkedin.com/in/dexterng"><img src="https://img.shields.io/badge/LinkedIn-Dexter%20Ng-0A66C2?logo=linkedin&logoColor=white" alt="LinkedIn"></a>
      <a href="https://github.com/dextee"><img src="https://img.shields.io/github/followers/dextee?label=Follow&logo=github" alt="Follow on GitHub"></a>
    </td>
  </tr>
</table>

More from Dexter:

- **[Singapore AI Governance Readiness Checklist](https://github.com/dextee/singapore-ai-governance-checklist)**: 24 evidence-oriented review prompts for taking an AI system or agent to production in Singapore, framed on IMDA's Model AI Governance Framework for Agentic AI.

Follow on [GitHub](https://github.com/dextee) or [LinkedIn](https://www.linkedin.com/in/dexterng) for updates when new Claude models ship.

## Contributing

Found a newer model, a price change or a better workflow? PRs are welcome; see [CONTRIBUTING.md](CONTRIBUTING.md). Please link an official source for any factual change.

If this guide saved you tokens, **⭐ star the repo** so other Claude Code users can find it.

## Disclaimer

This is an independent community guide, not affiliated with or endorsed by Anthropic. "Claude" and the model names are trademarks of Anthropic.

## License

[MIT](LICENSE)

<!-- Keywords: Claude Code agent team, Claude Code subagents, Claude Code models, which Claude model to use, Claude Fable 5.1, Claude Opus 5, Claude Sonnet 5, Claude Haiku 4.5, Claude Code advisor, agent teams, opusplan, effort level, multi-agent workflow, AI coding agents, Anthropic -->
