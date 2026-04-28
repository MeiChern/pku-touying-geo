# Component Schema

Every public component should have a stable semantic purpose.

## Academic Cover Logo

`geo-cover-page` may accept an optional `logo` argument. The value can be a project-root asset path string or already-rendered Typst content. Path strings are normalized by the public API layer, matching the path behavior of geoscience figure components.

## Lab Template Components

Lab-specific components should compose existing academic and geoscience pages instead of creating a duplicate full template. Current lab components include:

```text
geo-lab-cover-page
geo-lab-page
geo-lab-agenda-page
geo-lab-focus-page
geo-lab-project-page
geo-lab-group-page
geo-lab-publication-page
geo-lab-summary-page
geo-lab-references-page
geo-lab-end-page
```

These components should default to the canonical lab logo asset and expose text/data slots that can be reused for group meetings, collaborator briefings, and research summaries. Lab cover and end pages may use the photographic background; middle lab pages must remain white and beamer-like with the lab logo in the top-right header.

## Required Documentation

Each component spec or API note should define:

```text
name
purpose
required arguments
optional arguments
setup keys consumed
layout behavior
expected use cases
example invocation
compile proof
```

## Naming Rules

Use semantic names:

```text
geo-study-area-page
geo-data-page
geo-method-page
geo-result-page
geo-uncertainty-page
academic-agenda-page
```

Avoid style-only names:

```text
red-slide
two-column-card
agu-template
```

## Compatibility

If a public component signature changes, update:

1. `specs/component.schema.md` or a feature spec.
2. The implementation under `lib/components/`.
3. At least one example under `examples/`.
4. `specs/changelog.md` when the change is breaking.
