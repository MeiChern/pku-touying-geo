# Deck Config Schema

Deck configuration has two forms:

- `config.md`: human-readable intent for maintainers and AI agents.
- `config.typ`: compiler-facing configuration for Typst.

## Required Fields

```text
language: en | cn
venue: pku | agu | egu | generic | group
objective: conference | group-meeting | collaborator-briefing | defense | paper-discussion
density: light | normal | dense
title
author
institution
date
sections
```

## Recommended Fields

```text
subtitle
duration
audience
study_area_map
method_figure
result_figure
bibliography
notes_for_ai
```

## Ownership

- `task.md` controls the edit scope.
- `config.md` controls human intent.
- `config.typ` controls build behavior.

If the files disagree, agents should stop and reconcile the mismatch in the smallest reasonable way.

