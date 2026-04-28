#import "../lib/geo-presentation.typ": *

#let setup = geo-setup(
  language: "en",
  venue: "pku",
  objective: "collaborator-briefing",
  density: "normal",
)

#show: geo-theme.with(setup: setup)

#geo-lab-cover-page(
  setup,
  title: [Natural Hazards Remote Sensing Lab],
  subtitle: [PKU CUES research briefing template],
  author: [NHRS Lab],
  date: [2026-04-26],
)

#geo-lab-agenda-page(
  setup,
  sections: (
    [Lab Scope],
    [Group Introduction],
    [Project Template],
    [Recent Work],
    [Sources],
  ),
)

#geo-lab-focus-page(
  setup,
  summary: [Paraphrased from the public lab website: NHRS combines remote sensing, geoscience interpretation, and hazard-focused monitoring.],
  observations: (
    [SAR/InSAR deformation measurements],
    [Optical remote-sensing products and DEM context],
    [Field, geologic, and hydrologic constraints],
  ),
  hazards: (
    [Landslides and unstable slopes],
    [Earthquake offsets and active fault zones],
    [Aquifers, hydrodynamics, and ground deformation],
  ),
  outputs: (
    [Mechanistic interpretation of surface change],
    [Monitoring-ready maps, time series, and uncertainty checks],
    [AI/GIS products for broader natural-hazard screening],
  ),
  source: [Sources: https://gsprs-pku.github.io/ and https://gsprs-pku.github.io/research/],
)

#geo-lab-group-page(
  setup,
  title: [NHRS Lab In Practice],
  summary: [A public-photo example slide: people, field context, and remote-sensing products shown together for a lab introduction.],
  group-image: "figures/lab-showcase/nhrs-ai-workshop-2025.jpg",
  field-image: "figures/lab-showcase/slumgullion-field-team-2025.jpg",
  research-image: "figures/lab-showcase/slumgullion-displacement.png",
  points: (
    [PKU CUES hosts an NHRS community around AI, remote sensing, and natural-hazard interpretation.],
    [Field campaigns and instrument work provide context for interpreting deformation signals.],
    [Example lab slides can mix crew photos, field evidence, and research products without losing academic structure.],
  ),
  source: [Images: https://gsprs-pku.github.io/photos/ and https://gsprs-pku.github.io/research/],
)

#geo-lab-project-page(
  setup,
  title: [Reusable Project Slide],
  question: [What process explains the observed deformation, and how much confidence do we have in the interpretation?],
  observations: (
    [Define the observation window, spatial footprint, and sensor geometry.],
    [Show co-registered InSAR, optical, DEM, or field evidence.],
    [Separate raw observations from derived products.],
  ),
  methods: (
    [Use time-series deformation, geomorphic mapping, or AI-assisted screening.],
    [State assumptions, masks, reference areas, and uncertainty checks.],
    [Link the method to a physical hazard process.],
  ),
  interpretation: (
    [Lead with one claim supported by one primary figure.],
    [Tie spatial patterns to slope, fault, hydrologic, or seismic context.],
    [State what evidence would change the conclusion.],
  ),
  source: [Template content adapted from public NHRS research themes.],
)

#geo-lab-publication-page(
  setup,
  summary: [Use selected publications as proof points for the lab template, then move detailed citations to a reference page.],
  highlights: (
    [Large-scale landslide detection and remote-sensing mapping workflows.],
    [InSAR-based aquifer and hydrodynamic deformation studies.],
    [Earthquake surface displacement and active fault deformation analysis.],
    [Planetary or terrestrial slump, crater, and terrain-change applications.],
  ),
  source: [Source: https://gsprs-pku.github.io/publication/],
)

#geo-lab-summary-page(
  setup,
  title: [Template Checklist],
  summary: [This lab template keeps PKU CUES visible, uses the canonical NHRS logo, and remains compatible with the public framework API.],
  points: (
    [Start with the lab cover and canonical logo.],
    [Use `geo-lab-focus-page` for a lab or project overview.],
    [Use `geo-lab-project-page` for a recurring project update structure.],
    [Use `geo-lab-publication-page` to connect the talk to lab outputs.],
  ),
)

#geo-lab-references-page(
  setup,
  entries: (
    [Natural Hazards Remote Sensing Lab website. https://gsprs-pku.github.io/],
    [NHRS public photos. https://gsprs-pku.github.io/photos/],
    [NHRS research themes. https://gsprs-pku.github.io/research/],
    [NHRS publication list. https://gsprs-pku.github.io/publication/],
  ),
)

#geo-lab-end-page(
  setup,
  author: [NHRS Lab],
  institution: [PKU CUES],
  date: [2026-04-26],
)
