# Extreme-clarity rubric

18 rules × 1 point each. 16+/18 is the bar.

Source traditions:
- **Naomi Gleit (rules 1–10):** Head of Product, Meta. *naomi.com/extreme-clarity-c977d38f56dc*. Document and meeting hygiene.
- **Sentence-level 8 (rules 11–18):** standard technical-writing canon, restated as hard rules.

---

## Document + meeting hygiene (rules 1–10)

### 1. Docs — universally accessible format
- **Pass:** Google Docs, Markdown checked in, or a plain HTML page that opens in any browser.
- **Fail:** Notion page without public link; Word doc that lost its formatting in review; proprietary format nobody opens on the first try.
- **Why:** one shared link. One source of truth. No "can you re-send as X."

### 2. Slides — minimal white templates
- **Pass:** white or near-white background, maximum 2 accent colors, ample white space.
- **Fail:** stock-template illustrations, gradient backgrounds, emoji decoration, full-bleed photos behind text.
- **Why:** the slide moves a decision. Decoration fights the decision.

### 3. Lists — numbered over bulleted
- **Pass:** numbered lists where items have priority, order, or dependencies. Bulleted only for genuinely equal peer items.
- **Fail:** bullets used throughout regardless of whether priority or order matters.
- **Why:** "I disagree with #2" is unambiguous. "I disagree with the third bullet" is friction.

### 4. Links — behind "here" text
- **Pass:** `The full report is [here](https://...)`.
- **Fail:** `The full report is at https://some-long-subdomain.example.com/path/with/slashes/file.md`.
- **Why:** inline URLs break reading flow. Hidden under "here" keeps the scan clean.

### 5. Font — consistent
- **Pass:** one font family throughout. Calibri 11, Arial 11, or Inter 16 are standard defaults.
- **Fail:** font changes between sections. Mixing serif and sans. Default Google Docs mixed with pasted content in a different face.
- **Why:** font switching signals the writer focused on style, not substance. Undermines trust.

### 6. Bold — headers / sentence starts only
- **Pass:** bold reserved for section headers, the first few words of a paragraph where you want a scannable entry point, or a true key term. Max 2 bolded phrases per paragraph.
- **Fail:** bold scattered through the middle of sentences. Bolding whole sentences for emphasis. Bold used to compensate for weak writing.
- **Why:** if everything is bold, nothing is. Scan legibility collapses.

### 7. Italics — minimized
- **Pass:** italics only for term coinage (on first use, with inline definition), titles of works, and direct quotes at the author's choosing. Fewer than 5 italicized phrases in a long doc.
- **Fail:** italics used throughout for emphasis. Italics mixed with bold. Italics used to vary rhythm.
- **Why:** the reader's eye trips on italics. Only use when the emphasis does real argumentative work.

### 8. Visuals — one per meeting
- **Pass:** every meeting has a visual (slide, doc page, whiteboard) showing the agenda, the decisions reached, and the next steps. Shared artifact, same for everyone.
- **Fail:** verbal meetings where everyone takes parallel notes in their own system.
- **Why:** the visual is the contract. Without it, misalignment is guaranteed.

### 9. Agenda — always
- **Pass:** every meeting invite and every meeting opens with a written agenda. The current item is highlighted or pointed to as the meeting moves.
- **Fail:** meetings with no agenda. Or an agenda that's written but never referenced.
- **Why:** no agenda = no contract with the reader about what the time is for.

### 10. Real-time editing
- **Pass:** during a meeting, decisions and next steps are typed into the shared doc live. The doc reflects the state of the conversation at any moment.
- **Fail:** decisions are captured only in the follow-up email, written from memory, disagreed with in the follow-up.
- **Why:** prevents the "I thought you meant..." that follows every meeting without a live-edited record.

---

## Writing-level discipline (rules 11–18)

### 11. Every sentence is a takeaway, not a topic label
- **Pass:** "The launch slipped 2 weeks because the compliance review pulled in a second audit."
- **Fail:** "Regarding the launch timeline..." / "As a quick update on where we are..." / "Some thoughts on timing:"
- **Test:** Could someone read only your first sentences and know what the document says? If no, fail.

### 12. Facts separated from assumptions separated from interpretations
- **Pass:** Marked inline. "Fact: X. My read: Y. Guess: Z." Or separate paragraphs labeled. Or language like "we know," "I think," "probably."
- **Fail:** facts and speculation braided in a single sentence with no signal which is which.
- **Test:** could a reader re-read and sort each sentence into fact / opinion / guess? If no, fail.

### 13. Concrete always — numbers, dates, names, examples
- **Pass:** "3 customers in pilot, 12 on the waitlist, target 25 by April 15."
- **Fail:** "We have some customers using it and we're growing."
- **Test:** can any claim be independently checked? If no, it's not concrete.

### 14. One idea per paragraph
- **Pass:** each paragraph has one argumentative move — state a fact, draw an implication, pose a question, answer one. Next paragraph = next move.
- **Fail:** paragraphs with 2+ points braided together. Paragraphs that contain "And also," "Additionally," "That said," mid-paragraph.
- **Test:** could the paragraph be summarized in one sentence? If no, split it.

### 15. Summarize first, then detail
- **Pass:** TLDR at the top of any document longer than half a page. Each section opens with the conclusion, then supports it.
- **Fail:** narrative buildup where the reader has to reach the bottom to know the point. "Inverted pyramid" ignored.
- **Test:** can a reader stop after the first paragraph and know the key takeaway? If no, the doc isn't summary-first.

### 16. End with what you need
- **Pass:** the document closes with the specific ask, deadline, or decision. "Can you approve by EOD Friday?" "Need a go/no-go on X by Thursday." "FYI only, no action."
- **Fail:** "Happy to discuss." "Let me know your thoughts." "Looking forward to hearing from you." Or no close at all.
- **Test:** can the reader tell what to do next? If no, fail.

### 17. If terms could be fuzzy, define them once
- **Pass:** first time a term appears, define it inline. "Pilot cohort (the 5 customers running the alpha build) is..." Every subsequent use can stand alone.
- **Fail:** key terms used 10 times without definition. Different writers mean different things by the same word (hence misalignment).
- **Test:** would a first-time reader know what each specialized term means? If no, fail.

### 18. Numbered lists over bullets when order or priority matters
- **Pass:** numbered where order or ranking is real. Bulleted only where items are genuinely equal peers.
- **Fail:** bullets used throughout, including where some items clearly take precedence.
- **Test:** if I moved item 3 above item 1, would meaning change? If yes, number it.

---

## Scoring

- Each rule: 1 point pass, 0 fail, 0.5 partial.
- Add all 18 rules → total out of 18.
- **PASS ≥ 16** — ship it.
- **WARN 12–15** — one MAKEOVER pass, re-score.
- **FAIL ≤ 11** — the doc needs structural rework, not a polish.

## Hard caps

Certain single failures cap the total regardless of how many other rules pass:

| Trigger | Max score |
|---|---|
| No TLDR at top of a doc longer than half a page | 12 |
| No specific ask or next step in the close | 13 |
| Lists mix numbered and bulleted arbitrarily | 14 |
| More than 2 bolded phrases per paragraph (ad-hoc bolding) | 14 |
| Fuzzy terms used 5+ times without definition | 13 |

## Common MAKEOVER moves

Ordered by impact. Each move usually pushes the score by 1–3 points.

1. Add a TLDR at the top (moves rule 15, often 11).
2. End with the specific ask (moves rule 16).
3. Tag facts vs. opinions inline (moves rule 12, often 11).
4. Split multi-idea paragraphs (moves rule 14).
5. Convert bullet lists with priority to numbered (moves rule 18 + practice 3).
6. Strip ad-hoc bolding down to headers and sentence-starts (moves practice 6).
7. Replace inline URLs with "[here]" form (moves practice 4).
8. Define each fuzzy term on first use (moves rule 17).
9. Rewrite topic-label openers as takeaway sentences (moves rule 11).
10. Replace hedging closers ("Happy to discuss") with the ask or silence (moves rule 16).

---

## Example scores

**Typical first-draft exec memo:** 9–12/18. WARN or FAIL.
**Naomi Gleit-level product doc:** 16–18/18. PASS.
**A tight Slack message:** 14–17/18 (rules 1–2 and 5 and 7 may not apply to Slack-length messages; treat as N/A, don't ding).
**A stream-of-consciousness journal entry:** 6–10/18. Not relevant to apply this skill to journal entries; they follow first-person voice, not doc-hygiene rules.

When scoring, skip rules that don't apply to the asset type. A 1-slide deck doesn't need a TLDR separate from its title. An in-person meeting agenda rule doesn't apply to a written memo. Use judgment; mark those as N/A and adjust the denominator.
