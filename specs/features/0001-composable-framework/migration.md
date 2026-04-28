# Feature 0001 Migration

## Current State

The original deck imports `style/` and `slides/` directly.

## Target State

New decks should import:

```typst
#import "lib/geo-presentation.typ": *
```

Low-level imports remain available for backend development, but user-facing examples should rely on the public API.

