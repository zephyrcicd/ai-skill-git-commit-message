# Install for Claude Code

Recommended: install directly from the GitHub repository instead of cloning locally first.

## Direct install from GitHub

After the repo is published, run:

```bash
claude plugin install https://github.com/zephyrcicd/ai-skill-git-commit-message
```

If you want the shortcut name too, add a local alias after install:

```bash
ln -sfn ~/.claude/skills/generate-git-message ~/.claude/skills/ggm
```

## Use it

```text
$generate-git-message
```

And if you created the alias:

```text
$ggm
```
