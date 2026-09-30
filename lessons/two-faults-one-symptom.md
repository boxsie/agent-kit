# Two faults, one symptom

A rotary input control had been "fixed" twice and still didn't work. It had **two independent faults**, and fixing either one alone left the symptom byte-for-byte identical ("I turn it and nothing happens"):

1. The consuming system silently dropped every event above a count threshold (8, while the device could send 18). That was 13 of 15 gestures thrown away with no error anywhere.
2. The direction was inverted, even after two attempts to correct it.

**Why:** when a fix that should have worked doesn't, the reflex is "my fix was wrong". So you re-derive the same single cause and ship another wrong fix. The possibility that the first fix was *right but insufficient* never gets tested.

**The sharper half:** fault 1 was *selective against real use*. A careful debugging turn is a few clicks and sails through, "proving the logic works". An ordinary user flick pegs the counter and vanishes. Every deliberate investigation found nothing wrong, because it reasoned from traces of gestures that had already survived the filter.

**How to apply:**
- A bug that survived a competent fix is evidence *for* a second cause, not just against the first. Don't re-derive. Instrument.
- Instrument **both sides of the suspect boundary at once** (producer *and* consumer). One capture then separates "didn't send" from "didn't route" with no inference.
- When you can't reproduce what the user reports, suspect that your test gesture isn't their gesture. Ask them to use it the way they actually do, and watch the wire rather than the outcome.
