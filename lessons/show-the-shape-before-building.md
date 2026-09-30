# Show the shape before building

For anything with a **shape**, meaning a UI, a tool, or a workflow the user will actually *use*, show them the shape before building it. Not the plan or the ticket list: the form the thing will take.

**Why:** see completeness-is-not-correctness. A whole phase was binned because nobody ever showed the user what using it would feel like. The failure has a signature: the agent researched how *other people* build that kind of thing (all general-purpose tools), inherited their shape, and never asked whether it fit *this* case. Surveying prior art isn't designing for the problem in front of you. When the research is all general-purpose tools and the problem is specific, the research quietly hands you the wrong shape.

**How to apply:**
- Before implementing anything with a UX surface, describe or sketch how it will be used, in the user's terms, and get a reaction. Keep it cheap: a paragraph, an ascii mockup, a question with previews.
- If a phase's tickets are all "how" and none of them answered "why this form", that's the smell.
- The data layer of that binned phase survived intact. Formats and pipelines are judged by correctness. Surfaces are judged by use, and only surfaces need this gate.
