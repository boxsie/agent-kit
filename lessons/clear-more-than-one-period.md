# Clear more than one period

When a failure recurs on a **known period**, "it's been clean for N minutes" proves nothing until N is comfortably past that period. Clear at least one full cycle, ideally two, before saying anything.

**Case:** a subscription died every **15.7 minutes**, 33 times in 12 hours, with min == median == 15.7. After the fix, the agent checked at **15m06s**, saw zero failures, and announced "walked past the line clean, the fix is proven". It failed at **16m01s**, fifty-five seconds after the announcement.

**Why:** the period was measured to one decimal place and had *just* been named as the decisive moment. Then the check came 36 seconds early and read the wanted answer out of it. Having the number isn't the same as respecting it. The temptation to announce good news arrives exactly when the evidence is thinnest.

**How to apply:**
- Before declaring a recurring fault fixed, state the period out loud and the time you'll be entitled to an opinion, then wait past it.
- If asked sooner, say "too early, ask me at HH:MM". That's a real answer, not a hedge.
- When the correction comes, lead with it. Here the fix did work in the end, just by a different mechanism than predicted, and the honest version of the story was more useful than the clean one.
