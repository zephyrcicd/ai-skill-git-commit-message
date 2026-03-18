# Codex Install

## Steps

```bash
mkdir -p ~/ai/skills
git clone https://github.com/zephyrcicd/ai-skill-git-commit-message ~/ai/skills/ai-skill-git-commit-message
mkdir -p ~/.codex/skills
rm -rf ~/.codex/skills/ggm ~/.codex/skills/ggm-p
ln -s ~/ai/skills/ai-skill-git-commit-message/skills/ggm ~/.codex/skills/ggm
ln -s ~/ai/skills/ai-skill-git-commit-message/skills/ggm-p ~/.codex/skills/ggm-p
```

## Verify

```bash
ls -l ~/.codex/skills/ggm ~/.codex/skills/ggm-p
```
