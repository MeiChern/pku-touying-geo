# Project Spec

## Purpose

Build a maintainable Typst/Touying presentation framework for geoscience academic reports with optional PKU identity.

The project should support multiple languages, venues, and objectives without duplicating whole templates.

## Primary Users

- Geoscience researchers preparing academic talks.
- PKU students and collaborators preparing internal or conference reports.
- AI agents that need clear task boundaries and verifiable build commands.

## Supported Dimensions

- Language: English, Chinese.
- Venue: PKU/internal, AGU, EGU, generic academic, group meeting.
- Objective: conference talk, routine group meeting, collaborator briefing, defense/proposal, paper discussion.
- Density: light, normal, dense.

## Non-Goals

- Do not become a generic PowerPoint replacement.
- Do not implement every conference rule as a separate full template.
- Do not make PKU branding dominate every page.
- Do not refactor low-level style internals before the public API is proven by examples.

## Compatibility Policy

Before a stable release, public APIs may evolve, but examples must continue to compile. Breaking changes to component or preset APIs require a migration note under `specs/changelog.md`.

