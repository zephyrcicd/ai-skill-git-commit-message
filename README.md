# AI Skill: Git Commit Message

A shareable skill repo for generating concise Conventional Commit messages from the latest task context and the current git diff.

## Included skill

- `generate-git-message`

After installation, you can also expose the same skill under the shortcut name `ggm` by creating a local symlink.

## Repo structure

- `skills/generate-git-message/` - the skill
- `.claude-plugin/plugin.json` - enables direct Claude Code plugin install from GitHub
- `.codex/INSTALL.md` - remote-install instructions for Codex
- `install.sh` - local installer for Codex and Claude Code
- `docs/install-claude-code.md` - Claude Code install guide
- `docs/install-codex.md` - Codex install guide
- `docs/install-for-codex-agent.md` - prompt you can paste to Codex

## Claude Code

This repo is shaped for direct installation from GitHub, following the plugin-style structure used by repos like `obra/superpowers`.

See `docs/install-claude-code.md`.

## Codex

Codex does not currently support the same direct GitHub install flow for this use case, so the recommended path is to point Codex at `.codex/INSTALL.md` or let it clone the repo into `~/ai/skills/ai-skill-git-commit-message` and install from there.

See `docs/install-codex.md`.
