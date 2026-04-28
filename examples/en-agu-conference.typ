#import "../lib/geo-presentation.typ": *

#let setup = geo-setup(
  language: "en",
  venue: "agu",
  objective: "conference",
  density: "normal",
)

#show: geo-theme.with(setup: setup)

#geo-cover-page(
  setup,
  title: [Example AGU Geoscience Talk],
  subtitle: [Composable preset proof],
  author: [Researcher Name],
  institution: [Peking University],
  date: [2026-04-26],
)

#geo-agenda-page(
  setup,
  sections: geo-numbered-sections(setup),
)

#geo-study-area-page(
  setup,
  "figures/background.png",
  summary: [Conference talks should quickly establish location, scale, observations, and the scientific gap.],
  caption: [Placeholder study-area figure.],
  points: (
    [Location and geomorphic setting.],
    [Observation coverage and acquisition window.],
    [Main hypothesis tested in the talk.],
  ),
)

#geo-result-page(
  setup,
  "figures/background.png",
  summary: [Use one visual claim per result page.],
  caption: [Placeholder AGU result figure.],
  points: (
    [Primary spatial or temporal pattern.],
    [Physical interpretation.],
    [Uncertainty that matters for the conclusion.],
  ),
)

#geo-summary-page(
  setup,
  top-content: [AGU example proves that venue setup can change intent without duplicating a full template.],
  content: [
    - Replace placeholder figures with actual results.
    - Keep conference slides figure-first and low on prose.
    - Put detailed derivations in backup pages.
  ],
)

#geo-end-page(
  setup,
  author: [Researcher Name],
  institution: [Peking University],
  date: [2026-04-26],
)
