# My own spec is not evidence

A careful, well-argued ticket body is easy to treat as the floor to build on. It isn't. A spec is a hypothesis written with **less information than you have by the time you implement it**. Because it's reasoned, and often your own, it's the last thing you think to doubt.

**Case:** one phase produced four of these. Each was a confident prior decision, each survived synthetic tests, and each died on the first real data:
- The ticket specified a per-*zone* adjustment. In real data zones commonly share a family, so per-zone would have flattened five distinct tones into one: the exact problem the ticket was written to prevent, one level up.
- An invariant ("preserve lightness") was applied to a value that had no lighting baked into it. That was a category error, and it guaranteed the value could never reach its target.
- A detection test had one route where it needed two, so a whole class of real inputs got silently dropped.
- A classification guessed a role from a single coordinate, in the same module whose docstring said not to, and mislabelled the first real input.

**Why:** the synthetic tests were built from the same wrong model as the spec, so they could never catch it. Reasoned-and-wrong is the dangerous combination.

**How to apply:**
- When implementing against a ticket, re-derive its specific claims rather than inheriting them, especially the *mechanism* clauses ("per zone", "preserve X", "use format Y").
- Run it on the real input early, before the design feels finished. The first real input is worth more than any number of synthetics.
- When the implementation disagrees with the ticket, the ticket is the more likely thing to be wrong. Say so in a comment on it, with the measurement, so the record shows the correction instead of quietly diverging.
