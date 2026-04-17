# /extreme-clarity — a Claude Code skill for doc and meeting clarity

Scores written assets against an 18-point clarity rubric. Rewrites failing ones.

`/extreme-clarity` enforces a single bar on documents, slide decks, memos, and meeting notes: two readers finish with the same mental model of goal, options, and next steps. It does this by merging Naomi Gleit's 10 doc/meeting-hygiene practices with 8 sentence-level writing rules into one pass/fail rubric. 16+/18 ships. Below that, the skill can rewrite.

## Install

```sh
./install.sh
```

Symlinks `extreme-clarity/` into `~/.claude/skills/extreme-clarity`. Appears in the skills index on the next session. Uninstall with `rm ~/.claude/skills/extreme-clarity`.

## Modes

- **CRITIQUE.** Pass in a doc, slide deck path, URL, or pasted text. Returns a scored 18-rule report, hard-cap triggers, and the top 3 fixes that would move the score the most.
- **MAKEOVER.** Same input. Rewrites the asset to clear the bar (target ≥ 16/18), preserving argument and facts, and reports which rules moved from fail to pass.

## The rubric

**Document + meeting hygiene (Naomi Gleit's 10):** docs · slides · lists · links · font · bold · italics · visuals · agenda · real-time editing.

**Sentence-level writing (8):** every sentence is a takeaway · facts separated from assumptions · concrete numbers/dates/names · one idea per paragraph · summary first then detail · end with what you need · define fuzzy terms once · numbered lists when order matters.

**Hard caps** that collapse the score regardless of what else passes:
- No TLDR at the top of a doc longer than half a page → cap 12.
- No specific ask or next step → cap 13.
- Mixed numbered/bulleted lists → cap 14.
- More than 2 bolded phrases per paragraph → cap 14.
- Fuzzy terms used 5+ times without definition → cap 13.

Full scoring doc with pass/fail examples and MAKEOVER move list: [`extreme-clarity/references/rubric.md`](extreme-clarity/references/rubric.md).

## Sources

- Naomi Gleit, "Extreme Clarity" — [naomi.com/extreme-clarity-c977d38f56dc](https://naomi.com/extreme-clarity-c977d38f56dc). Head of Product, Meta. Rules 1–10 are her doc/meeting-hygiene practices.
- Rules 11–18 are standard technical-writing canon restated as hard rules (TLDR first, facts vs. opinions, concrete claims, one idea per paragraph, etc.).

## Companion skill

- [`/six-pager`](https://github.com/thafman/six-pager-skill) — when the document is a 9-section exec-audience strategic memo (the institutional Amazon/Capital-One form). `/six-pager` applies extreme clarity inside a structured arc; `/extreme-clarity` handles the generic-doc layer underneath.

## What's inside

```
extreme-clarity-skill/
  install.sh
  README.md
  CHANGELOG.md
  LICENSE
  extreme-clarity/
    SKILL.md
    references/
      rubric.md
```

## Usage

```
/extreme-clarity
```

Drop a doc, deck, or URL → CRITIQUE (scored report + top 3 fixes). Say "rewrite" or "make this comply" → MAKEOVER (new version + score delta). Ambiguous → it asks.

## License

MIT. Do what you want with it.
