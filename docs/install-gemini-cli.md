# Install for Gemini CLI

Gemini CLI does not use the same native skill marketplace flow as Claude Code. The recommended git-based approach is:

1. clone this repository into `~/.gemini`
2. add a small reference block to `~/.gemini/GEMINI.md`
3. let Gemini load and follow the relevant skill file when needed

## Installation

### 1. Clone the repository

```bash
mkdir -p ~/.gemini
git clone https://github.com/zephyrcicd/ai-skill-git-commit-message ~/.gemini/git-commit-message
```

### 2. Add instructions to `~/.gemini/GEMINI.md`

Append a short section like this:

```md
## Shared Git Commit Message Skills

A shared skill repo is available at `~/.gemini/git-commit-message`.

When the user asks to generate a git commit message from the latest conversation context and current git diff, read and follow:
- `~/.gemini/git-commit-message/skills/ggm/SKILL.md`

When the user asks to generate a git commit message and automatically run `git commit` after the privacy check passes, read and follow:
- `~/.gemini/git-commit-message/skills/ggm-p/SKILL.md`
```

## Update

```bash
cd ~/.gemini/git-commit-message
git pull
```

No extra relinking is needed after update.
