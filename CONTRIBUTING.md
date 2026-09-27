# Contributing

Thanks for helping keep this guide accurate. Claude models, prices, and Claude Code features change often, so up-to-date corrections are the most valuable contribution.

## What makes a good pull request

- **Link an official source** for every factual change: the [Claude Code docs](https://code.claude.com/docs) or the [Claude API docs](https://platform.claude.com/docs).
- **Update the "verified" date** badge at the top of the README when you re-check facts.
- **Keep agent files minimal.** A new agent in `plugins/agent-team/agents/` should have one clear job, a `description` that says when to use it, and the cheapest `model` and `effort` that do that job well.
- **Test agent files** in a real Claude Code session before submitting.
- **Run installer checks** with `python3 tests/test_installer.py` in Linux, macOS or WSL, plus `bash -n install.sh`. These tests use disposable folders and never call a Claude model. State separately whether a real model run was tested.

## Reporting outdated information

Open an issue using the **Outdated information** template and include the source link.
