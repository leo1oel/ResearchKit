#!/bin/bash
# ResearchKit skill installer: symlinks all skills into ~/.claude/skills/
set -e

KIT_DIR="$(cd "$(dirname "$0")" && pwd)"
SKILLS_DIR="${CLAUDE_SKILLS_DIR:-$HOME/.claude/skills}"

mkdir -p "$SKILLS_DIR"

for dir in "$KIT_DIR"/skills/*/; do
  name=$(basename "$dir")
  target="$SKILLS_DIR/$name"
  ln -sfn "$dir" "$target"
  echo "  linked: $name -> $target"
done

echo ""
echo "ResearchKit installed. Available skills:"
for dir in "$KIT_DIR"/skills/*/; do
  name=$(basename "$dir")
  desc=$(grep '^description:' "$dir/SKILL.md" 2>/dev/null | head -1 | sed 's/description: *//' | tr -d '"')
  printf "  /%-12s %s\n" "$name" "$desc"
done
