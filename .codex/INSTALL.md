# Codex Install

Install this skill by cloning the repo locally and linking the skill into Codex.

## Steps

```bash
mkdir -p ~/ai/skills ~/.codex/skills
git clone https://github.com/zephyrcicd/ai-skill-git-commit-message ~/ai/skills/ai-skill-git-commit-message
ln -sfn ~/ai/skills/ai-skill-git-commit-message/skills/generate-git-message ~/.codex/skills/generate-git-message
ln -sfn ~/.codex/skills/generate-git-message ~/.codex/skills/ggm
```

## Verify

```bash
ls -l ~/.codex/skills/generate-git-message ~/.codex/skills/ggm
```
