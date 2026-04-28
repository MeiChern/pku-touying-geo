# PKU Touying Geo

A spec-driven Typst/Touying presentation framework for geoscience academic reports with restrained PKU identity.

The project is being organized around composable presets and semantic slide components:

```text
deck = base theme + language + venue + objective + density + components
```

This avoids duplicating full templates for every combination such as EN/AGU, CN/group meeting, or collaborator briefing.

## Current Status

This branch contains the first framework scaffold:

- `lib/geo-presentation.typ`: public Typst API.
- `specs/`: durable contracts for architecture, config, presets, components, recipes, and AI-agent workflow.
- `examples/`: compile-tested example decks.
- `scripts/`: repeatable compile and smoke-test commands.
- `AGENTS.md` and `CLAUDE.md`: agent-facing operating rules.

The older `style/` and `slides/` layers are still the low-level Touying backend. New decks should usually import from `lib/geo-presentation.typ` instead of importing those backend files directly.

## Quick Start

Compile the active deck:

```bash
typst compile main.typ
```

Or use the project script:

```bash
scripts/compile-main.sh
```

Compile all examples:

```bash
scripts/compile-examples.sh
```

Run the agent smoke test:

```bash
scripts/agent-smoke-test.sh
```

## Public API

Use:

```typst
#import "lib/geo-presentation.typ": *
```

Then create a setup:

```typst
#let setup = geo-setup(
  language: "en",
  venue: "pku",
  objective: "conference",
  density: "normal",
)
```

Use semantic components:

```typst
#geo-study-area-page(...)
#geo-data-page(...)
#geo-method-page(...)
#geo-result-page(...)
#geo-uncertainty-page(...)
```

## Project Structure

```text
main.typ                  # active deck
config.md                 # human-readable deck intent
config.typ                # compiler-facing deck config
task.md                   # current task and scope

lib/                      # public API and reusable components
specs/                    # spec-driven contracts
examples/                 # compile-tested examples
scripts/                  # compile and smoke-test commands
agent/                    # agent schemas and checklist
docs/                     # maintainer guides
style/                    # low-level visual backend
slides/                   # low-level slide wrappers
figures/                  # image assets
```

## AI-Agent Workflow

Agents should read:

1. `AGENTS.md`
2. `task.md`
3. `config.md`
4. relevant files under `specs/`

The intended implementation loop is:

```text
spec -> implementation -> example -> compile check
```

See `AI_README.md`, `AGENTS.md`, and `specs/agent-workflow.md` for details.

