# Install for Codex

Codex currently uses the clone-based flow for this repo.

## Option 1: clone and install with script

```bash
mkdir -p ~/ai/skills
git clone https://github.com/zephyrcicd/ai-skill-git-commit-message ~/ai/skills/ai-skill-git-commit-message
bash ~/ai/skills/ai-skill-git-commit-message/install.sh codex
```

## Option 2: manual install

```bash
mkdir -p ~/ai/skills ~/.codex/skills
git clone https://github.com/zephyrcicd/ai-skill-git-commit-message ~/ai/skills/ai-skill-git-commit-message
ln -sfn ~/ai/skills/ai-skill-git-commit-message/skills/generate-git-message ~/.codex/skills/generate-git-message
ln -sfn ~/.codex/skills/generate-git-message ~/.codex/skills/ggm
```

## Use it

```text
$generate-git-message
```

Or with the alias:

```text
$ggm
```
