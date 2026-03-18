# Git Commit Message Skills

English | [简体中文](README.zh-CN.md)

A shareable AI skill repo for generating Git commit messages from conversation context and the current git diff.

Recommended install style: Git-first. Clone the repo locally, then follow the platform-specific guide for your tool.

It ships two related skills:

- `ggm` - generate a concise commit message only
- `ggm-p` - generate a commit message, then ask whether to run `git commit` for the relevant files

## What These Skills Do

These skills help an AI agent combine:

- the latest task discussed in the conversation
- the actual staged or unstaged git changes in the repository
- Conventional Commit best practices
- optional scoped commit style such as `feat(ship): ...`

`ggm-p` adds an extra guarded flow:

- selects only files relevant to the current change
- checks selected files for likely personal privacy leakage before commit
- asks the developer whether to run `git commit`
- commits only if the developer replies `1`
- never runs `git push`

## Features

- Generates concise Conventional Commit messages such as `feat:`, `fix:`, `refactor:`, and `chore:`
- Adds scope when the changed domain is clear, such as `feat(ship): ...`
- Prefers the real git diff over vague conversational intent when they conflict
- Supports Chinese task descriptions while outputting English commit messages
- Works with both Claude Code and Codex
- Keeps `ggm` and `ggm-p` separate so message-only and commit-assisted flows stay explicit

## Example Outputs

```text
feat(ship): add batch label sync
fix(auth): prevent refresh token loop
refactor(search): extract query normalization
chore: clean up unused feature flags
```

## Install

### Claude Code

This repository is structured as a Claude Code marketplace repository.

```bash
claude plugin marketplace add zephyrcicd/ai-skill-git-commit-message
claude plugin install git-commit-message@git-skills
```

Detailed guide: `docs/install-claude-code.md`

### Codex

Codex currently uses the clone-based install flow for this repository.

```bash
mkdir -p ~/ai/skills ~/.codex/skills
git clone https://github.com/zephyrcicd/ai-skill-git-commit-message ~/ai/skills/ai-skill-git-commit-message
ln -sfn ~/ai/skills/ai-skill-git-commit-message/skills/ggm ~/.codex/skills/ggm
ln -sfn ~/ai/skills/ai-skill-git-commit-message/skills/ggm-p ~/.codex/skills/ggm-p
```

Detailed guide: `docs/install-codex.md`

If you want Codex to install it for you, point it to:

- `.codex/INSTALL.md`
- `docs/install-for-codex-agent.md`


### OpenCode

OpenCode uses a git clone plus symlink flow similar to Superpowers.

Detailed guide: `docs/install-opencode.md`

### Gemini CLI

Gemini CLI uses a git clone plus `~/.gemini/GEMINI.md` reference flow.

Detailed guide: `docs/install-gemini-cli.md`

### Updating

See `docs/update.md`.

### Tell Another AI To Install It

See `docs/tell-ai.md`.

## Usage

```text
$ggm
```

```text
$ggm-p
```

## Repository Layout

```text
.
├── skills/ggm/                    # generate commit message
├── skills/ggm-p/                  # generate message and offer commit
├── .claude-plugin/plugin.json     # Claude Code plugin entry
├── .claude-plugin/marketplace.json
├── .codex/INSTALL.md              # Codex install instructions
├── docs/                          # platform-specific install guides
└── install.sh                     # local helper installer
```

## Choosing Between Them

Use `ggm` when you only want the commit message.

Use `ggm-p` when you want the model to:

- generate the message
- narrow the commit to relevant files
- check those selected files for likely privacy leakage
- ask whether to run `git commit`

## License

MIT. See `LICENSE`.
