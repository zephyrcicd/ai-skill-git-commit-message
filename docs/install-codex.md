# Install for Codex

This guide follows the git-based install style used by Superpowers: keep a local clone of the repo, then symlink the skills into Codex.

## Installation

### 1. Clone the repository

```bash
mkdir -p ~/ai/skills
git clone https://github.com/zephyrcicd/ai-skill-git-commit-message ~/ai/skills/ai-skill-git-commit-message
```

### 2. Symlink the skills into Codex

```bash
mkdir -p ~/.codex/skills
rm -rf ~/.codex/skills/ggm ~/.codex/skills/ggm-p
ln -s ~/ai/skills/ai-skill-git-commit-message/skills/ggm ~/.codex/skills/ggm
ln -s ~/ai/skills/ai-skill-git-commit-message/skills/ggm-p ~/.codex/skills/ggm-p
```

## Use it

```text
$ggm
```

```text
$ggm-p
```

## Update

```bash
cd ~/ai/skills/ai-skill-git-commit-message
git pull
```
