#!/bin/bash
# install.sh — Symlink /extreme-clarity into ~/.claude/skills/ so Claude Code can find it.
set -euo pipefail

REPO_DIR="$(cd "$(dirname "$0")" && pwd)"
SKILL_DIR="$REPO_DIR/extreme-clarity"

if [ ! -f "$SKILL_DIR/SKILL.md" ]; then
  echo "error: $SKILL_DIR/SKILL.md not found" >&2
  exit 1
fi

mkdir -p ~/.claude/skills

# Use -n to avoid descending into an existing symlink to a directory (macOS ln follows by default)
ln -sfn "$SKILL_DIR" ~/.claude/skills/extreme-clarity

echo "Installed /extreme-clarity → ~/.claude/skills/extreme-clarity"
echo "Restart Claude Code (or start a new session) and invoke with /extreme-clarity"
