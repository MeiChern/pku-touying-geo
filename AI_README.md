# AI Collaboration Guide

This repository is intended to be easy for Codex, Claude Code, and similar agents to maintain.

## Core Idea

Agents should not infer the project architecture from `main.typ` alone. The durable contract lives in `specs/`.

Use this loop:

```text
read task/config -> read spec -> implement -> update example -> compile
```

## Read Order

1. `AGENTS.md`
2. `task.md`
3. `config.md`
4. relevant files under `specs/`
5. implementation files under `lib/`, `examples/`, `style/`, and `slides/`

## File Roles

- `task.md`: current goal, scope, allowed files, acceptance criteria.
- `config.md`: human-readable deck intent.
- `config.typ`: compiler-facing deck configuration.
- `specs/`: durable architecture and API contracts.
- `lib/geo-presentation.typ`: public Typst API.
- `examples/`: compile-tested usage proofs.
- `scripts/`: repeatable validation commands.

## Agent Rules

- Prefer public imports from `lib/geo-presentation.typ`.
- Do not duplicate full templates for each language, venue, or objective.
- Compose decks from setup presets and semantic components.
- Do not refactor `style/` or `slides/` unless the task or spec explicitly allows it.
- If a public API changes, update a spec and an example.
- Run a compile check before final reporting.

## Common Commands

```bash
scripts/compile-main.sh
scripts/compile-examples.sh
scripts/agent-smoke-test.sh
```

## Future Task Template

Use `agent/task.schema.md` for `task.md` and `agent/config.schema.md` for `config.md`.

