#!/usr/bin/env bash
# Installs the personal kit into ~/.claude without clobbering anything already there.
# Re-running replaces the kit's own block in CLAUDE.md and refreshes the lessons.
set -euo pipefail
here="$(cd "$(dirname "$0")" && pwd)"
dest="${CLAUDE_HOME:-$HOME/.claude}"
mkdir -p "$dest/lessons"
cp "$here"/lessons/*.md "$dest/lessons/"

target="$dest/CLAUDE.md"
touch "$target"
if grep -q '<!-- personal-kit:start -->' "$target"; then
  awk -v kit="$here/CLAUDE.md" '
    /<!-- personal-kit:start -->/ { while ((getline line < kit) > 0) print line; skip=1; next }
    /<!-- personal-kit:end -->/   { skip=0; next }
    !skip
  ' "$target" > "$target.tmp" && mv "$target.tmp" "$target"
  echo "updated kit block in $target"
else
  { [ -s "$target" ] && echo; cat "$here/CLAUDE.md"; } >> "$target"
  echo "appended kit block to $target"
fi
echo "lessons -> $dest/lessons ($(ls "$here"/lessons/*.md | wc -l) files)"
