# Prose goes stale silently

Three wrong claims in one session, all the same shape: read something written down, believe it, act on it.

1. **A ticket body (written by the agent itself)** said a script was the engine other components still depend on, and told the implementer to preserve it. Running it gave `StopIteration` on line 66: it looked up its target by a naming convention the current data doesn't use, so it couldn't even find its input. The ticket's acceptance criterion was unsatisfiable.
2. **A module docstring** said mode A had been removed because it didn't work. Fifteen lines below, the argument parser had `--mode default="A"`. The docstring described a build from three weeks earlier, and it got copied into other docs before anyone caught it.
3. **A commit hash** quoted into a ticket from memory instead of read back from git.

**Why:** prose has no compiler. The code changes and the paragraph above it doesn't, and there's no diff, no test, no error. The sentence just quietly stops being true while staying perfectly confident. And the staler a doc gets, the more authoritative it *reads*, because it's had longer to be cited and copied.

**How to apply:**
- For anything you're about to act on, go to the **executable** thing. Trust the argparse default over the docstring, run the script instead of reading it, parse the file instead of reading the manifest that describes it, and read `git log` instead of recalling a hash.
- This matters most for claims that arrive pre-packaged as settled ("this is THE canonical X").
- When a doc turns out to be wrong, **fix it at the source**, not just in your answer. Otherwise the trap stays armed for the next reader.

The rule: **believe the artifact, not the account of it**, including your own account.
