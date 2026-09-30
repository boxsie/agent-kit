# Rules expire; ship capabilities bare

**Rules expire.** A feature got built with a paragraph in the code justifying why it could break an old rule ("no canned acknowledgements"). The user's answer: *"that rule is old now."* The rule had been a response to one specific bad experience, and the world had moved on so that experience couldn't happen any more. Energy spent defending a design against a rule should have gone into checking whether the rule still held.
- When you notice yourself writing "this breaks rule X, but…", stop and ask whether X still holds. One question either frees the design or confirms the rule with fresh reasoning.
- When a rule is retired, un-write it where it's cited as doctrine (comments, READMEs, docs), or it keeps steering decisions from beyond the grave. Keep the *behaviour* if it's still right on its own merits, and give that as the reason instead.

**Fewer rules, more trust.** An agent proposed a new capability *plus* a rule guarding against a failure it had only imagined. The user cut the rule: "we've always worked better with less rules and more positive experiences."
- Ship a capability bare. Wait for the real failure. Then it's a fact rather than a fear, and usually a smaller fix than the rule you'd have written.
- Rules earn their place by surviving contact with an actual problem, and they keep it the same way.
