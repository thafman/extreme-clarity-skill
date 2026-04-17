# /extreme-clarity: a Claude Code skill for clearer docs and memos

Checks a doc, slide deck, or memo against a clarity checklist, then rewrites it if it's weak. Install once, invoke with `/extreme-clarity` in Claude Code, and point it at whatever you're about to send.

## What it does

Two modes:

- **CRITIQUE.** Drop in a doc. It flags what's weakening the asset and proposes the top few fixes.
- **MAKEOVER.** Same input, but the skill also rewrites the doc. It preserves your argument and facts, and fixes whatever was pulling it down.

The checklist is drawn from two sources: [Naomi Gleit's "Extreme Clarity"](https://naomi.com/extreme-clarity-c977d38f56dc), a write-up of doc and meeting-hygiene practices from her time running product at Meta, and standard sentence-level writing discipline (summarize first, one idea per paragraph, end with the ask, define fuzzy terms once). It's a checklist, not a taxonomy. Items overlap. The value is consistent coverage, not clean partitioning.

## Before and after

Before:

> Hey team,
>
> Wanted to give a quick update on where things are with the Q2 launch, since a few moving pieces came up this week and I don't want anyone surprised.
>
> Overall we've been making solid progress across the workstreams, but the compliance side has developed in a way that's going to need a decision from us soon. Our current vendor is raising some concerns that we may not be able to fully resolve on the timeline we'd hoped, and we've also been looking at alternatives that have come up in conversations. Both paths have trade-offs worth working through.
>
> I want to flag this early so we can start thinking about implications for the launch and any downstream effects on the roadmap. There's also some engineering bandwidth questions depending on which way we go.
>
> Happy to jump on a call later this week. Let me know when works.

After:

> **TLDR.** Q2 pilot launches May 4, not April 20, unless we switch consent vendors by Wednesday. Missing May 4 means missing the partner demo at the May board.
>
> **The choice.** Stay with the current vendor (another ~2 weeks of compliance review, no eng work now) or migrate to the alternative (5 engineering days now, unblocks May 4, cleaner DPA posture going forward).
>
> **What migration costs.** Sarah and two others come off the onboarding rewrite, which pushes that work into June. Onboarding is on Retention's Q2 roadmap. The PM there will push back, and she's right to.
>
> **My read.** Migrate anyway. The board demo and the cleaner compliance posture are worth the onboarding slip. I'll own the Retention conversation.
>
> **Ask.** Yes or no by EOD Wednesday.

The structural moves are mechanical: TLDR up top, numbered facts, explicit ask. Naming the real stakes (who gets pulled off what, which meeting you miss, which other team you owe a conversation to) is specific to your situation. The skill flags vague phrases and asks you to replace them. Filling in the specifics is still on you.

## When to use it

Good fit: strategy docs, memos, slide decks, meeting notes, project updates, investor emails. Anything longer than half a page with more than one reader.

Not a good fit: marketing copy, UI microcopy, journal entries, first-person emails. Those have their own register, and this checklist will flatten the voice.

For exec-audience strategic memos in the specific 9-section institutional form, reach for [`/six-pager`](https://github.com/thafman/six-pager-skill). This skill handles the generic-doc layer underneath.

## Install

```sh
./install.sh
```

Symlinks `extreme-clarity/` into `~/.claude/skills/extreme-clarity`. Start a new Claude Code session and invoke `/extreme-clarity`. Uninstall with `rm ~/.claude/skills/extreme-clarity`.

## License

MIT.
