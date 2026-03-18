# Install for OpenCode

This guide follows the git-based install style used by Superpowers for OpenCode: clone the repo into your OpenCode config area, then symlink the skill folder so OpenCode can discover it natively.

## Prerequisites

- OpenCode installed
- Git installed

## Installation

### 1. Clone the repository

```bash
mkdir -p ~/.config/opencode
git clone https://github.com/zephyrcicd/ai-skill-git-commit-message ~/.config/opencode/git-commit-message
```

### 2. Symlink the skills

```bash
mkdir -p ~/.config/opencode/skills
rm -rf ~/.config/opencode/skills/git-commit-message
ln -s ~/.config/opencode/git-commit-message/skills ~/.config/opencode/skills/git-commit-message
```

## Usage

Use OpenCode's native skill loading/discovery flow and load:

- `git-commit-message/ggm`
- `git-commit-message/ggm-p`

## Update

```bash
cd ~/.config/opencode/git-commit-message
git pull
```

The symlink can stay as-is after updates.
