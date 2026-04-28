#import "../lib/geo-presentation.typ": *

#let setup = geo-setup(
  language: "en",
  venue: "pku",
  objective: "conference",
  density: "normal",
)

#show: geo-theme.with(setup: setup)

#geo-cover-page(
  setup,
  logo: "figures/lab-logo/Natural_Hazards_Remote_Sensing_Lab_logo_nhrs_lab_transparent.png",
  title: [Component Gallery],
  subtitle: [Public API compile proof],
  author: [Framework Maintainer],
  institution: [Peking University],
  date: [2026-04-26],
)

#geo-agenda-page(
  setup,
  sections: (
    [01 / Academic Pages],
    [02 / Geoscience Components],
    [03 / Verification],
  ),
)

#geo-section-page(
  setup,
  number: [01],
  title: [Academic Pages],
  description: [Cover, agenda, section, summary, references, and end pages are exposed through the public API.],
)

#geo-study-area-page(
  setup,
  "figures/background.png",
  summary: [Study-area pages combine a figure with context points.],
  caption: [Placeholder image used as a map stand-in.],
  points: (
    [Map or satellite image.],
    [Study-area context.],
    [Observational coverage.],
  ),
)

#geo-method-page(
  setup,
  workflow: "figures/background.png",
  summary: [Method pages can include either a workflow figure or text-only steps.],
  caption: [Placeholder workflow figure.],
  steps: (
    [Input data.],
    [Processing chain.],
    [Validation and uncertainty checks.],
  ),
)

#geo-three-figure-page(
  setup,
  "figures/background.png",
  "figures/background.png",
  "figures/background.png",
  text-body: [Use this page for three comparable maps, result panels, or processing stages.],
  image-one-caption: [Panel A],
  image-two-caption: [Panel B],
  image-three-caption: [Panel C],
)

#geo-references-page(setup)

#geo-end-page(
  setup,
  author: [Framework Maintainer],
  institution: [Peking University],
  date: [2026-04-26],
)
