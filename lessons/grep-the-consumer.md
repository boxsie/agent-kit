# Grep the consumer

When code documentation says "X is used for Y" (a field consumed by a service, a flag read by a subsystem, a value that drives behaviour), **grep for the consumer before repeating it or building a ticket on it.** Comments outlive the code they describe. The consumer gets deleted, the sentence stays, and it reads exactly like ground truth.

**Case:** a data class comment said a field is "the one field the engine consumes (camera limits, editor framing)". That got repeated as fact in a report, and a ticket was raised around a camera problem. Neither consumer existed: the camera had never had a limits concept, and the editor had been deleted months earlier. The user said "go do that ticket", so one wrong sentence in a docstring became a wrong sentence in a report and then scheduled work. Two greps would have caught it.

**Why:** reading a repo fast depends partly on trusting its prose, and prose is the least-tested thing in any codebase.

**How to apply:** any behavioural claim you're about to make from a comment gets one grep for the named consumer first. If the consumer isn't there, say so. "Nothing reads this" is a finding, often a more interesting one than the bug you thought you had.
