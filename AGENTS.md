# Agent Operating Contract

This repository is being shaped into a spec-driven Typst/Touying presentation framework for geoscience academic reports with PKU-aware styling.

## Read Order

1. `AGENTS.md`
2. `task.md`
3. `config.md`
4. Relevant files under `specs/`
5. Relevant implementation files under `lib/`, `examples/`, `style/`, and `slides/`

## Source Of Truth

- `specs/` defines project contracts and compatibility expectations.
- `task.md` defines the current work scope.
- `config.md` defines human-readable deck intent.
- `config.typ` defines compiler-facing deck configuration.
- `lib/geo-presentation.typ` is the public Typst API.
- `style/` and `slides/` are backend implementation layers.

## Edit Policy

- Prefer editing `task.md`, `config.md`, `config.typ`, `specs/`, `lib/`, `examples/`, `docs/`, `agent/`, and `scripts/`.
- Do not refactor `style/` or `slides/` unless the current task or a feature spec explicitly allows it.
- Do not create duplicate full templates for every venue/language pair.
- Compose decks from language, venue, objective, density, recipes, and components.
- If a public component API changes, update the matching spec and at least one example.
- If files change, run `typst compile main.typ` or the relevant script before final reporting.

## Architectural Rules

- Specs are authoritative; examples are usage proofs.
- Public examples should import from `lib/geo-presentation.typ`.
- Components should be semantic, not purely visual. Prefer names like `geo-study-area-page` over `red-two-column-slide`.
- Keep PKU identity restrained: use it as an academic affiliation and accent, not as a full-page branding treatment everywhere.
- Keep geoscience talks figure-first where possible.

## Verification

Use these commands when relevant:

```bash
typst compile main.typ
scripts/compile-main.sh
scripts/compile-examples.sh
scripts/agent-smoke-test.sh
```

