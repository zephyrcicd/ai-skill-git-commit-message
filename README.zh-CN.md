# Git Commit Message Skills

[English](README.md) | 简体中文

这是一个可分享的 AI skill 仓库，用于根据最近一次对话上下文和当前仓库的 git diff 生成 Git commit message。

推荐安装方式：优先使用 Git。先 clone 仓库，再按对应平台文档完成安装。

仓库包含两个相关 skill：

- `ggm` - 只生成简洁的 commit message
- `ggm-p` - 先生成 commit message，再询问是否对相关文件执行 `git commit`

## 这两个 Skill 的作用

这两个 skill 会综合以下信息：

- 当前对话里最近一次任务目标
- 仓库里实际 staged 或 unstaged 的 git 改动
- Conventional Commits 最佳实践
- 可选的 scope 风格，例如 `feat(ship): ...`

其中 `ggm-p` 会额外提供一层保护流程：

- 只选择和本次改动相关的文件
- 在 commit 前检查这些文件中是否可能包含个人隐私信息
- 询问开发者是否执行 `git commit`
- 只有开发者回复 `1` 才会真正 commit
- 不会自动执行 `git push`

## 特点

- 生成简洁的 Conventional Commit 信息，例如 `feat:`、`fix:`、`refactor:`、`chore:`
- 当改动领域明确时自动补 scope，例如 `feat(ship): ...`
- 当对话描述与实际 diff 冲突时，优先相信真实代码改动
- 支持中文任务描述理解，但最终输出英文 commit message
- 同时支持 Claude Code 和 Codex
- 将 `ggm` 和 `ggm-p` 分开，便于明确区分“仅生成 message”和“带 commit 确认”的流程

## 示例输出

```text
feat(ship): add batch label sync
fix(auth): prevent refresh token loop
refactor(search): extract query normalization
chore: clean up unused feature flags
```

## 安装

### Claude Code

本仓库按 Claude Code marketplace 仓库结构组织。

```bash
claude plugin marketplace add zephyrcicd/ai-skill-git-commit-message
claude plugin install git-commit-message@git-skills
```

详细说明见：`docs/install-claude-code.md`

### Codex

Codex 当前使用 clone 安装方式。

```bash
mkdir -p ~/ai/skills ~/.codex/skills
git clone https://github.com/zephyrcicd/ai-skill-git-commit-message ~/ai/skills/ai-skill-git-commit-message
ln -sfn ~/ai/skills/ai-skill-git-commit-message/skills/ggm ~/.codex/skills/ggm
ln -sfn ~/ai/skills/ai-skill-git-commit-message/skills/ggm-p ~/.codex/skills/ggm-p
```

详细说明见：`docs/install-codex.md`

如果希望让 Codex 自动安装，可以让它读取：

- `.codex/INSTALL.md`
- `docs/install-for-codex-agent.md`


### OpenCode

OpenCode 采用类似 Superpowers 的 git clone + symlink 安装方式。

详细说明见：`docs/install-opencode.md`

### Gemini CLI

Gemini CLI 采用 git clone + `~/.gemini/GEMINI.md` 引用的方式。

详细说明见：`docs/install-gemini-cli.md`

### 更新

详见：`docs/update.md`

### 让其他 AI 帮你安装

详见：`docs/tell-ai.md`

## 使用方式

```text
$ggm
```

```text
$ggm-p
```

## 仓库结构

```text
.
├── skills/ggm/                    # 生成 commit message
├── skills/ggm-p/                  # 生成 message 并提供 commit 确认
├── .claude-plugin/plugin.json     # Claude Code 插件入口
├── .claude-plugin/marketplace.json
├── .codex/INSTALL.md              # Codex 安装说明
├── docs/                          # 平台相关安装文档
└── install.sh                     # 本地安装辅助脚本
```

## 如何选择

需要“只生成 commit message”时，使用 `ggm`。

需要模型进一步：

- 生成 commit message
- 缩小到本次改动相关文件
- 检查这些文件是否可能包含隐私信息
- 询问是否执行 `git commit`

则使用 `ggm-p`。

## License

MIT，详见 `LICENSE`。
