---
name: extreme-clarity
description: |
  Enforce the extreme-clarity framework on documents, slides, meetings, and any written asset.
  Merges Naomi Gleit's 10 practices (doc/meeting hygiene) with 8 sentence-level writing rules
  into a single 18-point rubric. Two modes: CRITIQUE (score a draft) and MAKEOVER (rewrite it).

  TRIGGER when: user says "make this clearer," "extreme clarity," "Naomi Gleit," "this doc is
  muddy," "unclear," "rewrite for clarity," "clarify this," or asks for an audit of a written
  asset. Use proactively before shipping a doc/slide to an exec or partner.

  SKIP: creative marketing copy, character/brand voice pieces, product UI microcopy, first-person
  founder emails. For exec-audience strategic memos, reach for /six-pager instead; this skill
  handles the generic doc/slide/memo layer underneath.
---

# /extreme-clarity

## 1. What extreme clarity is

Naomi Gleit, Head of Product at Meta, defines it this way:

> "Extreme Clarity is when everyone is on the same page. It does not mean that everyone agrees about what to do. It means that everyone shares the same understanding of the facts. Everyone knows: our goal is X, our options are 1, 2, 3, and our next steps are A, B, C."

The purpose is to prevent wasted time on disagreements rooted in misunderstanding. The opposite state is "oh, I thought you meant..." The cost is every "let me clarify what I said last week" email that follows.

Extreme clarity is not about eloquence, cleverness, or style. It is about the reader — and every other reader in the chain — finishing the same document with the same mental model. That is a binary bar. Either they are aligned or they are not.

This skill enforces the bar on two dimensions:

1. **Document and meeting hygiene** — Naomi Gleit's 10 practices on how the asset is packaged.
2. **Writing-level discipline** — 8 sentence-level rules on how each sentence does its work.

Both dimensions must pass for a document to clear the bar.

## 2. When to use

**Use `/extreme-clarity` for:**
- Strategy docs, memos, briefs being shared across a team or sent to an exec.
- Slide decks for internal alignment, especially when the reader won't be in the room.
- Meeting agendas and meeting notes.
- Investor updates, board memos, planning docs.
- Any document longer than half a page that will have more than one reader.

**Don't use for:**
- Creative marketing copy — the rules here will flatten voice.
- UI / microcopy — narrower constraints apply (character limits, affordance cues).
- Personal journal entries or first-person messages — tone beats structure.
- Exec-audience strategic memos with a specific institutional form — reach for [`/six-pager`](https://github.com/thafman/six-pager-skill) instead.

Use this skill for generic documents: the 90% of written output that isn't covered by a more specific voice.

---

## 3. The Naomi Gleit 10 (document + meeting hygiene)

Source: Naomi Gleit, "Extreme Clarity," Medium (naomi.com/extreme-clarity-c977d38f56dc).

| # | Practice | Rule | Why it matters |
|---|----------|------|----------------|
| 1 | **Docs** | Use universally accessible formats. Google Docs as default for team consistency. | Not Word, not Notion (which fragments). One place, one link, one history. |
| 2 | **Slides** | Minimal white templates. Clean white space. Avoid flashy design. | Decoration fights content. A slide exists to move a decision, not to impress. |
| 3 | **Lists** | Number lists over bulleting them. | "I disagree with #2" is possible. "I disagree with the third bullet" is friction. |
| 4 | **Links** | Put links behind "here" text. | Full URLs inline create visual noise and break reading flow. |
| 5 | **Font** | Consistent. Calibri 11 or Arial. | Font switching is a smell that the writer focused on style over substance. |
| 6 | **Bold** | Reserve for sentence beginnings or headers only. No ad-hoc bolding. | If everything is bold, nothing is. Scan legibility collapses. |
| 7 | **Italics** | Minimize. Visual cost usually outweighs the benefit. | The reader's eye trips on italics. Only use when the emphasis does real work. |
| 8 | **Visuals** | Every meeting: one visual showing agenda, decisions, next steps. | Forces the meeting into a shared artifact rather than parallel mental notes. |
| 9 | **Agenda** | Every meeting has one. Highlight the current item as you go. | No agenda = no contract with the reader about what this hour is for. |
| 10 | **Real-time editing** | Document decisions and next steps live during meetings. | Prevents the "I thought you meant..." after the meeting ends. |

These are mechanical. They score quickly. A doc either follows them or doesn't.

---

## 4. The sentence-level 8 (writing-level discipline)

Standard technical-writing canon, restated as hard rules.

| # | Rule | Write | Not |
|---|------|-------|-----|
| 1 | **Every sentence is a takeaway, not a topic label.** | "The launch slipped two weeks because the compliance review pulled in a second audit." | "Regarding the launch timeline..." |
| 2 | **Separate facts from assumptions from interpretations.** | "The vendor closed 11 of 12 audit items (fact). I think item 12 lands by Friday (guess)." | Mixing both in one sentence without marking. |
| 3 | **Concrete always.** | "3 customers in pilot, 12 on waitlist, target is 25 by April." | "We're growing." |
| 4 | **One idea per paragraph.** | Separate paragraphs for each distinct point. | Two or three points braided into one block. |
| 5 | **Summarize first, then detail.** | TLDR at the top. Conclusions before the reasoning. | Narrative buildup where the reader has to reach the bottom to know what you mean. |
| 6 | **End with what you need.** | "Can you approve by EOD Friday?" | Trailing off. "Happy to discuss." |
| 7 | **If terms could be fuzzy, define them once.** | First mention: "Pilot cohort (the 5 customers running the alpha build)..." | Assuming shared definitions. |
| 8 | **Numbered lists over bullets when order or priority matters.** | "1. 2. 3." when priority is real. | Bullets that imply equality when there is actually ranking. |

These are stylistic. They score on close read.

---

## 5. The unified rubric

A document clears extreme clarity when it passes both the Naomi 10 and the sentence-level 8.

Scoring: 18 points total. Each rule is 1 point, pass or fail. 0.5 allowed for partial.

**PASS: 16+ / 18. WARN: 12–15. FAIL: ≤ 11.**

**Hard caps:**
- No TLDR at the top of a doc longer than a page → cap at 12 (writing-rule 5).
- Document ends with no ask or next step → cap at 13 (writing-rule 6).
- Lists mix numbered and bulleted arbitrarily → cap at 14 (practice 3 + rule 8).
- Excessive bolding (more than 2 bolded phrases per paragraph) → cap at 14 (practice 6).
- Fuzzy terms used repeatedly without definition → cap at 13 (rule 7).

Full scoring doc: `references/rubric.md`.

---

## 6. Mode selection

On invocation, pick from:

- **User gives a doc, slide deck, path, or URL** → CRITIQUE.
- **User says "rewrite," "fix," "clean up," or "make this comply"** → MAKEOVER.
- **User asks "what is extreme clarity" or the request is ambiguous** → Show §1–§5 of this doc. Offer both modes.

---

## 7. CRITIQUE mode

### Input
A document path, slide deck, URL, or pasted text.

### Procedure

1. Read the full source.
2. Score each of the 18 rules. Mark each pass / fail / partial.
3. Identify the top 3 fixes that would move the score the most.
4. Apply hard-cap checks.
5. Return the scored report.

### Output format

```
## /extreme-clarity Critique

**Score: X/18**
**Status: PASS | WARN | FAIL**

### Document + meeting hygiene (Naomi Gleit 10)
 1. Docs (universal format):        [pass / fail / n/a] — [one-line note]
 2. Slides (minimal template):      [...]
 3. Lists (numbered over bullet):   [...]
 4. Links ("here" form):            [...]
 5. Font (consistent):              [...]
 6. Bold (headers/starts only):     [...]
 7. Italics (minimized):            [...]
 8. Visuals (agenda/decisions/next):[...]
 9. Agenda (present + highlighted): [...]
10. Real-time editing (for meetings):[...]

### Writing-level discipline (sentence-level 8)
11. Sentences as takeaways:         [pass / fail / partial] — [quote any offenders]
12. Facts separated from assumptions:[...]
13. Concrete (numbers, dates, names):[...]
14. One idea per paragraph:         [...]
15. Summary first, then detail:     [...]
16. Ends with the ask:              [...]
17. Fuzzy terms defined once:       [...]
18. Numbered over bulleted by priority:[...]

### Hard caps triggered
[list any, or "none"]

### Top 3 fixes
1. **[Rule #]** — current: "…" → suggested: "…"
2. **[Rule #]** — current: "…" → suggested: "…"
3. **[Rule #]** — current: "…" → suggested: "…"

### Verdict
[One paragraph. What's working, single biggest fix, ship/hold.]
```

---

## 8. MAKEOVER mode

### Input
A document path, slide deck, URL, or pasted text. Target score: 16+/18.

### Procedure

1. Run internal CRITIQUE first to identify gaps.
2. Rewrite the document. Preserve the argument and facts. Change only what's needed to clear each failed rule.
3. Common moves:
   - Add a TLDR at the top (if longer than half a page).
   - Replace bulleted lists with numbered where priority matters.
   - Convert inline URLs to "[here](url)" form.
   - Strip ad-hoc bolding down to sentence-starts and headers.
   - Tag facts vs. opinions inline ("Fact: X." "My read: Y.").
   - Split multi-idea paragraphs.
   - Rewrite topic-label openers as takeaways.
   - End with the specific ask, deadline, or decision needed.
4. Re-run CRITIQUE on the output. Target ≥ 16.
5. Return:
   - The rewritten document (full).
   - A diff summary: which rules moved from fail to pass.
   - The new score.

---

## 9. Quick-reference card

```
DEFINITION:  everyone shares the same understanding of the facts.
TEST:        two readers finish with the same mental model of goal, options, next steps.
NAMED 10:    docs · slides · lists · links · font · bold · italics · visuals · agenda · real-time edit
SENTENCE 8:  takeaway sentences · facts/opinions separate · concrete · one-idea-per-paragraph ·
             summary-first · end-with-ask · define-fuzzy · numbered-when-priority
BAR:         16+/18 = PASS
CAPS:        no TLDR (cap 12) · no ask (cap 13) · mixed lists (cap 14) · bold-abuse (cap 14) ·
             fuzzy-terms-repeated (cap 13)
MODES:       CRITIQUE · MAKEOVER
SOURCE:      Naomi Gleit · naomi.com/extreme-clarity-c977d38f56dc
RUBRIC:      references/rubric.md
```

---

## 10. Examples

### Before (FAIL, ~9/18)

> **Project Update**
>
> Regarding the timeline, there are some things that have come up that we should discuss. We have been working hard on various aspects of the project and have made significant progress in **many areas**. That said, there are some challenges we are facing with compliance, and we will need to **leverage** our existing resources to handle them appropriately. Additionally, we are looking at some potential new vendors which could help.
>
> Some of the bullets to keep in mind:
>
> * Compliance issues
> * Vendor exploration
> * Next steps
>
> Let me know if you have any questions. Happy to discuss further.

### Hard-cap hits
- No TLDR at top → **cap at 12**.
- No specific ask → **cap at 13**.
- Bulleted list where priority matters → **cap at 14**.
- "Significant progress" / "leverage" / "appropriately" = fuzzy, slop, no concreteness (fails rule 3).
- Topic-label opener "Regarding the timeline..." (fails rule 1).
- "Happy to discuss further" (fails rule 6).

### After (PASS, 17/18)

> **Project update · TLDR**
>
> The launch slipped 2 weeks because the compliance review pulled in a second audit. Compliance is now blocking launch. We need to pick a vendor path this week.
>
> **Facts**
> 1. The compliance vendor closed 11 of 12 audit items; item 12 (service-provider DPA evidence) is in flight.
> 2. Our current vendor is in test environment only.
> 3. An alternative vendor demoed their consent stack on April 13. Notes [here](./meetings/2026-04-13-vendor-demo.md).
>
> **Options**
> 1. Stay with the current vendor. Known. Already in test. Lower switching cost.
> 2. Migrate to the alternative's consent stack. In-app webview, simpler integration, source-of-truth consent receipts.
>
> **My read:** option 2 is likely correct. Mostly because it removes duplicate consent tracking on our side.
>
> **Ask:** can you review the comparison doc by EOD Wednesday? The launch date slips another week if we don't decide by Thursday.

### Score moves
- Rule 1 (takeaway sentences): FAIL → PASS.
- Rule 2 (facts / assumptions / interpretations): FAIL → PASS (explicit "Facts" / "My read").
- Rule 3 (concrete): FAIL → PASS (dates, counts, explicit item numbers).
- Rule 5 (summary first): FAIL → PASS (TLDR at top).
- Rule 6 (ends with ask): FAIL → PASS (specific ask + deadline).
- Rule 8 (numbered over bulleted): FAIL → PASS.
- Practice 4 (links as "here"): FAIL → PASS.
- Practice 6 (bold reserved): FAIL → PASS (bold only on section headers).

That's 8 rules moved. Score goes from ~9 to 17.

---

## 11. Companion skill

- **[`/six-pager`](https://github.com/thafman/six-pager-skill)** — when the document is a 9-section exec-audience strategic memo (the institutional Amazon/Capital-One form). `/six-pager` applies extreme clarity inside its structured arc; `/extreme-clarity` is the generic-doc layer underneath.
