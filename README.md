# /extreme-clarity

**A Claude Code skill that grades your docs against an 18-point clarity rubric. Then rewrites the failing ones.**

## TLDR

1. **The bar:** 16/18. Typical first-draft memos and product docs clear 9–12.
2. **Two modes:** CRITIQUE (scored report + top-3 fixes) and MAKEOVER (rewrite to ≥ 16, with a score delta).
3. **The rubric:** Naomi Gleit's 10 doc/meeting-hygiene practices + 8 sentence-level writing rules.
4. **Install:** `./install.sh`. Next Claude Code session, invoke `/extreme-clarity`.

## Why you'll care

Every "I thought you meant…" email is the bill for a doc that didn't clear the bar. Every meeting that produces three different follow-ups is the same bill, paid in calendar time.

Extreme clarity, as [Naomi Gleit](https://naomi.com/extreme-clarity-c977d38f56dc) (Head of Product, Meta) defines it, is when everyone finishes the doc with the same mental model of the goal, the options, and the next steps. It's a binary property — two readers are either aligned or they aren't. This skill is the test for it.

## What it does

### CRITIQUE mode
Drop in a doc, slide deck, URL, or pasted text. The skill returns:

1. A score out of 18, labeled PASS / WARN / FAIL.
2. Each of the 18 rules marked pass / fail / partial, with a one-line note.
3. Hard-cap triggers — single failures that collapse the total regardless of what else passes.
4. The top 3 fixes that would move the score the most, with suggested rewrites.

### MAKEOVER mode
Same input, different output. The skill rewrites the asset to clear 16+/18, preserves argument and facts, and reports which rules moved from fail to pass. Typical delta is +6 to +10 points.

## The rubric at a glance

**Document + meeting hygiene (Naomi Gleit's 10).** docs · slides · lists · links · font · bold · italics · visuals · agenda · real-time editing.

**Sentence-level writing (8).** takeaway sentences · facts separated from assumptions · concrete numbers-dates-names · one idea per paragraph · summary first then detail · end with what you need · define fuzzy terms once · numbered lists when order matters.

Full scoring doc with pass/fail examples for every rule and the MAKEOVER move list: [rubric.md](extreme-clarity/references/rubric.md).

## Hard caps

Single failures that collapse the total regardless of everything else:

1. No TLDR at the top of a doc longer than half a page → cap 12.
2. No specific ask or next step in the close → cap 13.
3. Lists mix numbered and bulleted arbitrarily → cap 14.
4. More than 2 bolded phrases per paragraph → cap 14.
5. Fuzzy terms used 5+ times without definition → cap 13.

## A 20-second before / after

### Before (scores ~9/18)

> Regarding the timeline, we've made significant progress in many areas but are facing some compliance challenges. We'll need to **leverage** our existing resources **appropriately**. Happy to discuss.

### After (scores 17/18)

> **TLDR.** Launch slips 2 weeks. Compliance blocks us until we pick a vendor path. Need your call by Thursday.
>
> **Facts.**
> 1. Compliance vendor closed 11 of 12 audit items; item 12 in flight.
> 2. Current vendor is test-env only.
> 3. Alternative vendor demoed April 13.
>
> **My read.** Option 2 (migrate). Removes duplicate consent tracking on our side.
>
> **Ask.** Review the comparison doc by EOD Wednesday. Otherwise we slip another week.

Delta: +8. Eight rules moved from fail to pass in under two minutes of rewriting.

## Install

```sh
./install.sh
```

Symlinks `extreme-clarity/` into `~/.claude/skills/extreme-clarity`. Appears in the skills index on the next session. Uninstall with `rm ~/.claude/skills/extreme-clarity`.

## Companion skill

[`/six-pager`](https://github.com/thafman/six-pager-skill) — for exec-audience strategic memos that need the 9-section institutional form. `/six-pager` applies extreme clarity inside a structured arc. `/extreme-clarity` handles every doc underneath.

## Source

Rules 1–10 are Naomi Gleit's ["Extreme Clarity"](https://naomi.com/extreme-clarity-c977d38f56dc) Medium post. Rules 11–18 are standard technical-writing canon restated as hard pass/fail rules.

## License

MIT.

---

**Try it.** Run `/extreme-clarity` on the last memo you sent. You will learn something about your writing that peer review won't tell you.
