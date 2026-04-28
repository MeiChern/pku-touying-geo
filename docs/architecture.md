# Architecture Guide

The project uses a spec-driven structure:

```text
spec -> implementation -> example -> compile check
```

Use `specs/architecture.md` for the authoritative contract. This document is a shorter guide for maintainers.

New presentation behavior should usually be implemented in `lib/` first, with examples under `examples/`. Avoid changing `style/` until the public API is proven.

