# Feature 0001 Design

## Public API

```typst
#import "lib/geo-presentation.typ": *
```

## Setup Object

```typst
#let setup = geo-setup(
  language: "en",
  venue: "pku",
  objective: "group-meeting",
  density: "normal",
)
```

## Component Families

- Academic: cover, agenda, transition, references, end page.
- Geoscience: study area, data, method, result, uncertainty.
- Recipes: default section lists by objective.

## Backend

The first implementation wraps the existing `style/` and `slides/` files. Backend refactoring is postponed until examples prove the public API.

