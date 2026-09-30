# Stage explicit paths, never `-A`

**Case:** `git add -A` ran while another session was actively editing a different directory in the same working tree. That session's uncommitted work got committed and pushed inside an unrelated commit. The earlier `git status` had been clean for those paths, because their edits landed *after* the check. A pre-commit status is a stale snapshot, not a guarantee.

**How to apply:**
- Stage explicit paths (`git add src/feature/`), never `-A` or `.` at the repo root.
- If a commit lands with files you didn't touch, check mtimes. Files changing *now* mean live concurrent work, so never `git checkout` over them. Fix forward with a revert of just those paths, not a force-push.
