# Git Commit Message Skill

A shareable AI skill for generating clean Git commit messages from the latest conversation context and the current git diff.

It is designed for people who repeatedly ask their coding agent to "write the commit message for this change" and want a fast, consistent result without retyping prompt instructions every time.

## What This Skill Does

This skill helps an AI agent generate a commit message by combining:

- the latest task discussed in the conversation
- the actual staged or unstaged git changes in the repository
- Conventional Commit best practices
- optional scoped commit style such as `feat(ship): ...`

It is especially useful when:

- you want short, production-style commit subjects
- you use Conventional Commits
- you want the model to understand Chinese context but output the final commit message in natural English
- you want a reusable shortcut such as `ggm`

## Features

- Generates concise Conventional Commit messages such as `feat:`, `fix:`, `refactor:`, and `chore:`
- Adds scope when the changed domain is clear, such as `feat(ship): ...`
- Prefers the real git diff over vague conversational intent when they conflict
- Supports Chinese task descriptions while outputting English commit messages
- Works with both Claude Code and Codex
- Can be installed with the shortcut alias `ggm`

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

Optional alias:

```bash
ln -sfn ~/.claude/skills/generate-git-message ~/.claude/skills/ggm
```

Detailed guide: `docs/install-claude-code.md`

### Codex

Codex currently uses the clone-based install flow for this repository.

```bash
mkdir -p ~/ai/skills ~/.codex/skills
git clone https://github.com/zephyrcicd/ai-skill-git-commit-message ~/ai/skills/ai-skill-git-commit-message
ln -sfn ~/ai/skills/ai-skill-git-commit-message/skills/generate-git-message ~/.codex/skills/generate-git-message
ln -sfn ~/.codex/skills/generate-git-message ~/.codex/skills/ggm
```

Detailed guide: `docs/install-codex.md`

If you want Codex to install it for you, point it to:

- `.codex/INSTALL.md`
- `docs/install-for-codex-agent.md`

## Usage

After installation, invoke the skill with:

```text
$generate-git-message
```

If you created the alias:

```text
$ggm
```

## Repository Layout

```text
.
├── skills/generate-git-message/   # the actual skill
├── .claude-plugin/plugin.json     # Claude Code plugin entry
├── .codex/INSTALL.md              # Codex install instructions
├── docs/                          # platform-specific install guides
└── install.sh                     # local helper installer
```

## Why Only One Skill Directory?

This repository intentionally keeps only one real skill directory: `generate-git-message`.

The shortcut name `ggm` is an installation-time alias, not a duplicated second skill. This keeps the repo easier to maintain while still letting users invoke the skill with a shorter command.

## Chinese Summary

这是一个用于生成 Git commit message 的可分享 AI skill。

它会结合最近一次对话中的任务目标和当前仓库的 git diff，生成简洁的 Conventional Commit 风格提交信息，比如：

- `feat: ...`
- `fix: ...`
- `refactor: ...`
- `feat(ship): ...`

特点：

- 支持中文上下文理解，最终输出英文 commit message
- 优先依据真实代码改动，而不是只看对话描述
- Claude Code 可直接从 GitHub 安装
- Codex 可通过 `.codex/INSTALL.md` 或 clone 方式安装
- 可以本地配置 `ggm` 作为快捷别名

## License

MIT. See `LICENSE`.
