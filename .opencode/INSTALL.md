# Install for OpenCode

## Steps

```bash
mkdir -p ~/.config/opencode
git clone https://github.com/zephyrcicd/ai-skill-git-commit-message ~/.config/opencode/git-commit-message
mkdir -p ~/.config/opencode/skills
rm -rf ~/.config/opencode/skills/git-commit-message
ln -s ~/.config/opencode/git-commit-message/skills ~/.config/opencode/skills/git-commit-message
```

## Verify

```bash
ls -l ~/.config/opencode/skills/git-commit-message
```
