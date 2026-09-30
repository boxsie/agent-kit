# Prefer stable, pinned dependencies

**Case:** regenerating protobuf stubs, the agent let `protobuf` float to the newest major (7.x) and matched the generated code to it. No stable `grpcio-tools` targeted that major yet, so the regen step couldn't run at all. The user's framing: *"you just saw a shiny new thing... what we really need here is cross-codebase compatibility and not to have to remember gotchas every time."*

**How to apply:**
- When picking or pinning a dependency or toolchain version, default to the **last version that's globally usable**: a stable release with full tooling support, compatible across every codebase that shares the contract. Not "latest".
- **Pin it explicitly and write down the one-line recipe** so it never has to be rediscovered. Boring and reproducible beats clever.
- If you catch yourself reaching for a version *because it's new*, that's the tell.

**The meta-lesson:** when you've dug yourself into a self-made tangle, **stop grinding solo and surface it**. "Don't worry, we'll fix it together" was faster and cleaner than spiralling alone. The ask isn't perfection. It's recognising the spiral early and pulling the human in.
