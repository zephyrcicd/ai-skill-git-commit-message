# Install for Claude Code

Recommended: add this repository as a marketplace, then install the plugin from that marketplace.

## Marketplace install

After the repo is published, run:

```bash
claude plugin marketplace add zephyrcicd/ai-skill-git-commit-message
claude plugin install git-commit-message@zephyrcicd-skills
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
