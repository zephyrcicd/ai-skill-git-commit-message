# Codex Install

Install these skills by cloning the repo locally and linking them into Codex.

## Steps

```bash
mkdir -p ~/ai/skills ~/.codex/skills
git clone https://github.com/zephyrcicd/ai-skill-git-commit-message ~/ai/skills/ai-skill-git-commit-message
ln -sfn ~/ai/skills/ai-skill-git-commit-message/skills/ggm ~/.codex/skills/ggm
ln -sfn ~/ai/skills/ai-skill-git-commit-message/skills/ggm-p ~/.codex/skills/ggm-p
```

## Verify

```bash
ls -l ~/.codex/skills/ggm ~/.codex/skills/ggm-p
```
