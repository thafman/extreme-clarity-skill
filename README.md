# Your docs are probably a 9/18. This Claude Code skill tells you why, and rewrites them.

`/extreme-clarity` scores any written asset against an 18-point rubric, then rewrites failing ones until they pass.

## The bar is 16/18. Typical first drafts clear 9–12.

1. Two modes: CRITIQUE (scored report + top-3 fixes) and MAKEOVER (rewrite to ≥ 16, with score delta).
2. The rubric: Naomi Gleit's 10 doc/meeting-hygiene practices, plus 8 sentence-level writing rules.
3. Install with `./install.sh`. Next Claude Code session, invoke `/extreme-clarity`.

## Every "I thought you meant…" email is the bill for a doc that failed the bar.

Extreme clarity, as [Naomi Gleit](https://naomi.com/extreme-clarity-c977d38f56dc) (Head of Product, Meta) defines it, is when everyone finishes the doc with the same mental model of the goal, the options, and the next steps. It's a binary property — two readers are either aligned or they aren't. This skill is the test for it.

## CRITIQUE scores your doc. MAKEOVER rewrites it.

**CRITIQUE returns the score, the hard-cap triggers, and the 3 fixes that move it the most.** Drop in a doc, slide deck, URL, or pasted text. The skill returns:

1. A score out of 18, labeled PASS / WARN / FAIL.
2. Each of the 18 rules marked pass or fail, with a one-line note.
3. Hard-cap triggers — single failures that collapse the total regardless of what else passes.
4. The top 3 fixes, each with a suggested rewrite.

**MAKEOVER rewrites the asset to ≥ 16, preserving your argument and facts.** Typical delta is +6 to +10 points — a claim drawn from the rubric's own example scores, not from a surveyed sample.

## 18 rules: 10 on doc hygiene, 8 on sentence craft.

**Document and meeting hygiene (Naomi Gleit's 10).** docs · slides · lists · links · font · bold · italics · visuals · agenda · real-time editing.

**Sentence-level writing (8).** takeaway sentences · facts separated from assumptions · concrete numbers-dates-names · one idea per paragraph · summary first then detail · end with what you need · define fuzzy terms once · numbered lists when order matters.

Full scoring doc with pass/fail examples for every rule: [rubric.md](extreme-clarity/references/rubric.md).

## Five single failures can collapse any score regardless of everything else.

1. No TLDR at the top of a doc longer than half a page → cap 12.
2. No specific ask or next step in the close → cap 13.
3. Lists mix numbered and bulleted arbitrarily → cap 14.
4. More than 2 bolded phrases per paragraph → cap 14.
5. Fuzzy terms used 5+ times without definition → cap 13.

## Same argument, +8 points in two minutes of rewriting.

### Before scores 9/18.
> Regarding the timeline, we've made significant progress in many areas but are facing some compliance challenges. We'll need to **leverage** our existing resources **appropriately**. Happy to discuss.

### After scores 17/18.
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

## `./install.sh` symlinks the skill into `~/.claude/skills/extreme-clarity`.

Appears in the skills index on the next Claude Code session. Uninstall with `rm ~/.claude/skills/extreme-clarity`.

## `/six-pager` handles 9-section exec memos. This handles every other doc.

[`/six-pager`](https://github.com/thafman/six-pager-skill) applies extreme clarity inside the institutional Amazon/Capital-One form. `/extreme-clarity` is the generic-doc layer underneath.

## Naomi Gleit wrote the 10. Rules 11–18 are standard technical-writing canon.

Rules 1–10 come from Naomi Gleit's ["Extreme Clarity"](https://naomi.com/extreme-clarity-c977d38f56dc) Medium post. Rules 11–18 are long-standing technical-writing discipline — TLDR first, concrete claims, one idea per paragraph, end with the ask — restated here as hard pass/fail rules.

## MIT license. Do what you want with it.

---

**Run `/extreme-clarity` on the last memo you sent.** You will learn something about your writing that peer review won't.
