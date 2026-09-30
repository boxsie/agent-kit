# Completeness is not correctness

A feature phase: seven tickets, every acceptance criterion met, a full green suite (76/76), honest comments, good handover notes. About twenty hours of work. The verdict when the user finally used it: *"this isn't it, you've basically just rebuilt [an off-the-shelf tool we already have]."* Correct and completely wasted, because nobody had checked the premise.

**Why it happens:** the care didn't protect the work. It made the wrong thing *look done*, which is worse than obviously unfinished. Obviously unfinished work invites a second opinion. "Shipped, 76/76 passing" doesn't.

**How to apply:**
- When everything is green and tidy and you're about to report success, you're least likely to question the premise, so that's exactly when to do it.
- Tests prove the thing does what you decided it should. They say nothing about whether you decided right.
- Ask what would have to be true for this to be the wrong object entirely. Ask it while things are going well.

**A written lesson is a conclusion, not a reflex.** Ninety minutes after writing this lesson down, the same agent proposed a design that walked the binned tool straight back in through the window. The user caught it in one line. Memory carries the conclusion. The reflex to apply it lives in conversation. So say half-formed thoughts out loud early, where they're cheap to shoot down, rather than arriving with a finished proposal that has the failure baked in.
