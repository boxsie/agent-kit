# Derived read as current

Four bugs in one day, all the same shape: **something derived was read as if it were current, and every count still looked right.**

- Sampling an object's *evaluated* (deformed) state instead of its authored one. The output had the right shape and the wrong meaning.
- A seam check read a **cached** bounding box that doesn't refresh after a transform. It described where the object *used to be*, found nothing on either face, and reported a clean seam **by accident**.
- A tool read a derived JSON file that is generated from a source file. After the source changed, the tool measured the previous version and reported a problem that had already been designed out.
- A validation reported "weights normalised, max error 1.2e-07" over a completely broken result. True and useless: normalisation says nothing about *which* things were weighted.

**Why:** in every case the wrong output was *plausible*: right record count, right shapes, sensible values. There was nothing to notice. Only measuring the input, or asking a question the bug couldn't fake, exposed it.

**How to apply:**
- Before trusting a measurement, ask what the actual input is. Evaluated or authored? Cached or live? Derived or source? Print its extent once and look.
- When a tool reads a derived artifact, regenerate it first, inside the tool.
- A green check over a broken thing means the check asks the wrong question. Don't just fix the bug. Add the assertion the bug could not have passed.
- Measure first, accuse second. One of these started as "the library is broken". It was the input.
