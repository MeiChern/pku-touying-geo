# Architecture Spec

## Layer Model

```text
specs/          durable contracts
lib/            public API and reusable implementation
examples/       compile-tested usage proofs
style/          low-level visual backend
slides/         low-level slide wrappers
docs/           user and maintainer guidance
agent/          AI-agent schemas and checklists
scripts/        deterministic verification commands
```

## Composition Model

```text
deck = base theme + language preset + venue preset + objective preset + density preset + semantic components
```

Preset merge order:

```text
base defaults
< language
< venue
< objective
< density
< deck-specific overrides
```

Current implementation keeps most style tokens in the existing `style/` backend. The new `lib/` layer defines the public API and setup contract first.

## Dependency Rules

- `examples/` may import `lib/geo-presentation.typ`.
- `lib/` may import `style/` and `slides/`.
- `style/` and `slides/` should not import from `examples/`, `docs/`, or `agent/`.
- Specs should not depend on implementation details that are not part of the public API.

## Public API

The intended public entry point is:

```typst
#import "lib/geo-presentation.typ": *
```

External decks should not import low-level files from `style/` or `slides/` unless they are deliberately extending internals.

