# Update Guide

## Claude Code

```bash
claude plugin update git-commit-message
```

If you want to refresh the marketplace metadata too:

```bash
claude plugin marketplace update git-skills
```

## Codex

If installed from git with symlinks, update the cloned repo:

```bash
cd ~/ai/skills/ai-skill-git-commit-message
git pull
```

Your existing links in `~/.codex/skills` continue to work.

## OpenCode

```bash
cd ~/.config/opencode/git-commit-message
git pull
```

Your existing link in `~/.config/opencode/skills/git-commit-message` continues to work.

## Gemini CLI

```bash
cd ~/.gemini/git-commit-message
git pull
```
