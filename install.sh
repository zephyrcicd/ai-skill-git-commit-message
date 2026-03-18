#!/usr/bin/env bash
set -euo pipefail

REPO_DIR="$(cd "$(dirname "$0")" && pwd)"
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
  link_skill "$REPO_DIR/skills/ggm" "$HOME/.codex/skills/ggm"
  link_skill "$REPO_DIR/skills/ggm-p" "$HOME/.codex/skills/ggm-p"
  echo "Installed for Codex: $HOME/.codex/skills/{ggm,ggm-p}"
}

install_claude() {
  mkdir -p "$HOME/.claude/skills"
  link_skill "$REPO_DIR/skills/ggm" "$HOME/.claude/skills/ggm"
  link_skill "$REPO_DIR/skills/ggm-p" "$HOME/.claude/skills/ggm-p"
  echo "Installed for Claude Code: $HOME/.claude/skills/{ggm,ggm-p}"
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
