# Feature 0001: Composable Framework

## Goal

Introduce a maintainable framework layer that composes language, venue, objective, density, and semantic geoscience components.

## Motivation

The project needs to support English, Chinese, AGU, EGU, PKU/internal, group meetings, and collaborator briefings without duplicating complete templates.

## Acceptance Criteria

- A public Typst import exists at `lib/geo-presentation.typ`.
- At least one example deck imports only the public API.
- `main.typ` compiles.
- Example decks compile.
- Agent instructions describe the source-of-truth workflow.

