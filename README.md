# /extreme-clarity — a Claude Code skill for clearer docs and memos

Checks a doc, slide deck, or memo against a clarity checklist, then rewrites it if it's weak. Install once, invoke with `/extreme-clarity` in Claude Code, and point it at whatever you're about to send.

## What it does

Two modes:

- **CRITIQUE.** Give it a doc. It flags what's weakening the doc — every vague phrase standing in for a fact, every meandering opener, every ask the reader has to guess at — and proposes the top few changes that would help most.
- **MAKEOVER.** Same input, but the skill also rewrites the doc. It keeps your argument and facts intact and fixes whatever was pulling it down.

The checklist is drawn from two sources: [Naomi Gleit's "Extreme Clarity"](https://naomi.com/extreme-clarity-c977d38f56dc), a write-up of doc and meeting-hygiene practices from her time running product at Meta, and standard sentence-level writing discipline — summarize first, one idea per paragraph, end with the ask, define fuzzy terms once. It's a checklist, not a taxonomy. Items overlap; the value is consistent coverage, not clean partitioning.

## Before and after

Before:

> Regarding the timeline, we've made significant progress in many areas but are facing some compliance challenges. We'll need to leverage our existing resources appropriately. Happy to discuss.

After:

> **Where things stand.** The Q2 customer-pilot launch slips from April 20 to May 4. That pushes the planned partner demo past the May board review — losing our best shot at the Q2 revenue target if we don't decide the vendor path this week.
>
> **What's happening.**
> 1. The current consent vendor (test environment only) can't sign off on production use by April 20 — compliance requires a signed DPA covering real-user data, and we don't have one.
> 2. The alternative vendor demoed April 13. Their stack is production-ready today, but migrating burns ~5 engineering days.
> 3. Staying with the current vendor adds another 2-week compliance review cycle after they finish their side.
>
> **My read.** Migrate. 5 engineering days is cheaper than missing the May board review.
>
> **Ask.** Decide by EOD Wednesday. Otherwise May 4 slips too.

Notice what the rewrite does — and what it doesn't. The structural fixes (TLDR up top, numbered facts, named ask) are cheap. The real work is in the specifics: *what launches* (the Q2 customer pilot), *what's at stake* (the board review, the Q2 revenue target), *what the trade-off actually costs* (5 engineering days vs. a 2-week compliance cycle). Structure alone doesn't make a doc clear. It makes a doc scannable. Stakes-naming is what makes it clear.

The skill can do the structural work automatically. The stakes-naming it can only prompt you toward — by flagging every vague phrase and asking you to replace it with the real number.

## When to use it

Good fit: strategy docs, memos, slide decks, meeting notes, project updates, investor emails — anything longer than half a page with more than one reader.

Not a good fit: marketing copy, UI microcopy, journal entries, first-person emails. Those have their own register, and this checklist will flatten the voice.

For exec-audience strategic memos in the specific 9-section institutional form, reach for [`/six-pager`](https://github.com/thafman/six-pager-skill). This skill handles the generic-doc layer underneath.

## Install

```sh
./install.sh
```

Symlinks `extreme-clarity/` into `~/.claude/skills/extreme-clarity`. Start a new Claude Code session and invoke `/extreme-clarity`. Uninstall with `rm ~/.claude/skills/extreme-clarity`.

## License

MIT.
