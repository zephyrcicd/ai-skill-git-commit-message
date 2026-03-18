#!/usr/bin/env bash
set -euo pipefail

REPO_DIR="$(cd "$(dirname "$0")" && pwd)"
SKILL_SRC="$REPO_DIR/skills/generate-git-message"
MODE="${1:-all}"

link_skill() {
  local src="$1"
  local dst="$2"

  if [ -L "$dst" ] || [ -f "$dst" ]; then
    rm -f "$dst"
  elif [ -d "$dst" ]; then
    echo "Refusing to replace directory: $dst" >&2
    exit 1
  fi

  ln -s "$src" "$dst"
}

install_codex() {
  mkdir -p "$HOME/.codex/skills"
  link_skill "$SKILL_SRC" "$HOME/.codex/skills/generate-git-message"
  link_skill "$SKILL_SRC" "$HOME/.codex/skills/ggm"
  echo "Installed for Codex: $HOME/.codex/skills/{generate-git-message,ggm}"
}

install_claude() {
  mkdir -p "$HOME/.claude/skills"
  link_skill "$SKILL_SRC" "$HOME/.claude/skills/generate-git-message"
  link_skill "$SKILL_SRC" "$HOME/.claude/skills/ggm"
  echo "Installed for Claude Code: $HOME/.claude/skills/{generate-git-message,ggm}"
}

case "$MODE" in
  codex)
    install_codex
    ;;
  claude|claude-code)
    install_claude
    ;;
  all)
    install_codex
    install_claude
    ;;
  *)
    echo "Usage: $0 [all|codex|claude]" >&2
    exit 1
    ;;
esac
