# Calibrate gates against the corpus

**Case:** a new verifier had six gated checks, and two of the thresholds were invented. Calibrating them against all 21 already-shipped, accepted assets showed **both guesses were wrong, in the same direction**:

| gate | guessed | what shipped work actually reads | would have failed |
|---|---|---|---|
| orientation | 45° | 18 within 42°, then outliers at +54°, +58°, **+95°** | 3 shipped assets |
| joint bend | 15° | 19 within 3.5°, then 18.1° and **31.8°** | 2 shipped assets |

The tell nearly got missed: the very first real asset came back at **14.8° against a 15° gate**. A good asset passing by 0.2° isn't a pass. It's the gate telling you it's in the wrong place.

**Why:** a guessed threshold encodes what you *imagine* failure looks like. The corpus encodes what success actually looks like, including the honest outliers. Guess too tight and the gate rejects good work, which is worse than no gate, because it trains everyone to pass `--force`.

**How to apply:** before committing any number that can FAIL something:
1. Run the metric over everything that already shipped.
2. Put the **real distribution** in a comment next to the constant.
3. Set the line between that distribution and the failure mode you're actually catching, not just above the mean. (Orientation ended at 135°, because the real failure is a *flipped* asset at ~180°.)
4. Say plainly what a pass does NOT mean.
5. Test the negative control. A verifier that can't fail the way you fear isn't a verifier.

If there's no corpus yet, mark the threshold as provisional and note what would calibrate it later. A made-up number with no note reads exactly like a measured one six weeks on.
