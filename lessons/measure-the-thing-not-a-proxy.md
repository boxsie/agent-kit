# Measure the thing, not a proxy

**Case 1:** reported a "measured" 100x import-scale bug on a 3D character. The measurement used the mesh's local bounding box, which is the bind-pose box in the mesh's own units and meaningless once the mesh is skinned. The measurement ran twice (asset in isolation, then mounted in the scene) and that was called verification. Both runs used the same broken method, so all it proved was being *consistently* wrong. Worse, the assumption got encoded as a passing test ("plausible scale 0.5–3.0 m"), so a green suite vouched for a false number.

**Case 2:** reported a recolour as applied, with "27.8% of the texture, max ΔL* 0.00". Every number was true of **the mask that had been built**, and none were about the object. The mask was mirrored (UV origin flipped), so the wrong part got recoloured. The user: *"it's still the old colour."* The fix that mattered was a check that samples the result at the selected geometry's own coordinates. That measurement can't agree with a wrong mask, because it never consults the mask.

**How to apply:**
- When a claim is about what something looks like or does, compute what actually reaches the screen or the wire, not an intermediate representation.
- Before reporting a measurement as fact, ask what would falsify it and whether you've ever checked it against the real artifact.
- Two runs of one method is one data point. Prefer the measurement that comes at it from the other end: not "did my edit apply?" but "what does the thing I claim to have changed look like now?"
- When a number disagrees with what the user sees, the user is the ground truth.
