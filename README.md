# /extreme-clarity — a Claude Code skill for clearer docs and memos

Scores a doc, slide deck, or memo against a clarity rubric, then rewrites it if it's failing. Install once, invoke with `/extreme-clarity` in Claude Code, and point it at whatever you're about to send.

## What it does

Two modes:

- **CRITIQUE.** Give it a doc. It returns a score, marks each rule pass or fail, and flags the 3 changes that would improve it the most.
- **MAKEOVER.** Same input, but the skill also rewrites the doc — keeping your argument and facts, fixing whatever was pulling the score down.

The rubric has 18 rules in two halves. Ten cover how the doc is packaged: does it use one consistent font, are lists numbered or bulleted, is there an agenda. Eight cover how each sentence does its work: does it state a takeaway, is it concrete, does it end with a specific ask. A doc needs to pass 16 of the 18 to clear the bar. Typical first drafts land in the 9–12 range.

## Before and after

A typical project update, 9/18:

> Regarding the timeline, we've made significant progress in many areas but are facing some compliance challenges. We'll need to leverage our existing resources appropriately. Happy to discuss.

After MAKEOVER, 17/18:

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

The rewrite replaces vague phrases with facts, decisions, and asks — the moves that push most docs across the bar.

## Where the rubric comes from

The first ten rules are from [Naomi Gleit's "Extreme Clarity"](https://naomi.com/extreme-clarity-c977d38f56dc), a write-up of doc and meeting-hygiene practices from her time running product at Meta. The other eight are standard technical-writing discipline — summarize first, one idea per paragraph, end with the ask, define fuzzy terms once. The full list with pass/fail examples for each rule is in [rubric.md](extreme-clarity/references/rubric.md).

## When to use it

Good fit: strategy docs, memos, slide decks, meeting notes, project updates, investor emails — anything longer than half a page with more than one reader.

Not a good fit: marketing copy, UI microcopy, journal entries, first-person emails. Those have their own register; this rubric will flatten the voice.

For exec-audience strategic memos in the specific 9-section institutional form, reach for [`/six-pager`](https://github.com/thafman/six-pager-skill). This skill handles the generic-doc layer underneath.

## Install

```sh
./install.sh
```

Symlinks `extreme-clarity/` into `~/.claude/skills/extreme-clarity`. Start a new Claude Code session and invoke `/extreme-clarity`. Uninstall with `rm ~/.claude/skills/extreme-clarity`.

## License

MIT.
