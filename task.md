# Task

## Goal

Create the first spec-driven scaffold for a composable geoscience academic report framework with PKU-aware identity.

The framework should support multiple languages, venues, and objectives through presets and reusable components instead of duplicated full templates.

## Use Case

- Language: EN first, CN supported by preset contract.
- Venue: PKU/internal first, AGU and EGU prepared as venue presets.
- Objective: general academic conference/group reporting first.
- Audience: geoscience researchers, PKU students, collaborators, and AI agents maintaining the deck.
- Duration: flexible, typically 10 to 20 minutes.

## Allowed Files

- `task.md`
- `config.md`
- `config.typ`
- `main.typ`
- `AGENTS.md`
- `CLAUDE.md`
- `AI_README.md`
- `specs/`
- `lib/`
- `examples/`
- `docs/`
- `agent/`
- `scripts/`

## Do Not Touch

- Avoid refactoring `style/` and `slides/` in this first scaffold unless compilation requires a small compatibility fix.

## Acceptance Criteria

- `main.typ` uses the public API from `lib/geo-presentation.typ`.
- Specs describe the source-of-truth architecture.
- Agent instructions exist for Codex/Claude-style tools.
- At least one example deck imports only the public API.
- `typst compile main.typ` succeeds.
- `scripts/agent-smoke-test.sh` succeeds.

