#import "../lib/geo-presentation.typ": *

#let setup = geo-setup(
  language: "en",
  venue: "egu",
  objective: "conference",
  density: "normal",
)

#show: geo-theme.with(setup: setup)

#geo-cover-page(
  setup,
  title: [Example EGU Geoscience Talk],
  subtitle: [Venue preset compile proof],
  author: [Researcher Name],
  institution: [Peking University],
  date: [2026-04-26],
)

#geo-agenda-page(
  setup,
  sections: geo-numbered-sections(setup),
)

#geo-method-page(
  setup,
  workflow: "figures/background.png",
  summary: [EGU-style talks often need a compact method overview before figure-heavy results.],
  caption: [Placeholder workflow figure.],
  steps: (
    [Observation products and preprocessing.],
    [Model or interpretation workflow.],
    [Validation and uncertainty checks.],
  ),
)

#geo-result-page(
  setup,
  "figures/background.png",
  summary: [The same result component works under a different venue preset.],
  caption: [Placeholder EGU result figure.],
  points: (
    [Main result pattern.],
    [Geoscience interpretation.],
    [Remaining uncertainty.],
  ),
)

#geo-end-page(
  setup,
  author: [Researcher Name],
  institution: [Peking University],
  date: [2026-04-26],
)

