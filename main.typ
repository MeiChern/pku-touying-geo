#import "config.typ": deck-config
#import "lib/geo-presentation.typ": *

#let setup = geo-setup(
  language: deck-config.language,
  venue: deck-config.venue,
  objective: deck-config.objective,
  density: deck-config.density,
)

#show: geo-theme.with(setup: setup)

#geo-cover-page(
  setup,
  logo: deck-config.lab_logo_horizontal,
  title: deck-config.title,
  subtitle: deck-config.subtitle,
  author: deck-config.author,
  institution: deck-config.institution,
  date: deck-config.date,
)

#geo-agenda-page(
  setup,
  sections: deck-config.sections,
)

#geo-section-page(
  setup,
  number: [01],
  title: [Background],
  description: [Frame the geoscience problem, why it matters, and what evidence the talk will use.],
)

#geo-study-area-page(
  setup,
  deck-config.study_area_map,
  summary: [A good geoscience report first anchors the audience in place, scale, geomorphic context, and available observations.],
  caption: [Placeholder for a study-area map, DEM, satellite image, or geologic setting figure.],
  points: (
    [Show the geographic setting and relevant tectonic, climatic, or geomorphic controls.],
    [Mark observation footprints, field sites, profiles, or regions of interest.],
    [Use captions to state what the audience should read from the map.],
  ),
)

#geo-data-page(
  setup,
  summary: [Data pages should make the evidence base explicit before interpretation begins.],
  datasets: (
    [Remote-sensing imagery, DEMs, geologic maps, field measurements, or sensor time series.],
    [Acquisition period, spatial resolution, uncertainty, and preprocessing status.],
    [External datasets and citations required for reproducibility.],
  ),
  notes: (
    [Separate raw observations from derived products.],
    [Use one page for overview, then figure-first result pages for details.],
  ),
)

#geo-section-page(
  setup,
  number: [02],
  title: [Method],
  description: [Describe the processing chain or model at the level needed for the audience to trust the results.],
)

#geo-method-page(
  setup,
  workflow: deck-config.method_figure,
  summary: [Method slides should expose the logical chain from observations to geoscience interpretation.],
  caption: [Placeholder for workflow diagram, model schematic, or inversion pipeline.],
  steps: (
    [Define inputs and preprocessing choices.],
    [State the core model, assumptions, or classification logic.],
    [Show validation, sensitivity checks, and uncertainty propagation.],
  ),
)

#geo-section-page(
  setup,
  number: [03],
  title: [Results],
  description: [Use figure-first pages: one claim, one primary visual, and a small number of interpretation points.],
)

#geo-result-page(
  setup,
  deck-config.result_figure,
  summary: [The result page API is intentionally generic so it can host maps, profiles, time series, model outputs, or comparison plots.],
  caption: [Placeholder for main geoscience result figure.],
  points: (
    [Lead with the claim, not the plotting process.],
    [Tie visual patterns back to physical interpretation.],
    [Call out uncertainty or alternative explanations where they affect the conclusion.],
  ),
)

#geo-uncertainty-page(
  setup,
  summary: [A robust academic report separates interpretation from uncertainty and next validation steps.],
  assumptions: (
    [The placeholder workflow assumes datasets are co-registered and comparable.],
    [The chosen figure layout assumes one dominant message per result page.],
  ),
  limitations: (
    [Venue-specific styling is represented as setup metadata, but the low-level theme palette is not yet fully tokenized.],
    [Real reports still need project-specific data citations and figure assets.],
  ),
  next-checks: (
    [Replace placeholders with real maps and result figures.],
    [Add venue-specific examples for AGU, EGU, and routine group meetings.],
  ),
)

#geo-summary-page(
  setup,
  top-content: [This first scaffold proves the workflow: spec, preset setup, semantic component, example, and compile check.],
  content: [
    - The deck now uses a public `lib/geo-presentation.typ` API.
    - Language, venue, objective, and density are represented by a setup object.
    - Geoscience-specific pages are semantic wrappers around the existing Touying backend.
    - Future styling work can refine the backend without changing user-facing examples.
  ],
)

#geo-references-page(
  setup,
  entries: (
    [Touying package documentation. Typst Universe. Used as the presentation framework backend.],
    [Awesome-Marp project by favourhong. Used as styling inspiration for reusable layouts and theme-color switching.],
    [Metropolis Beamer theme. Used as academic-presentation inspiration for restrained sectioning and navigation.],
    [Project specs under `specs/`. Used as the source-of-truth contract for future AI-agent work.],
  ),
)

#geo-end-page(
  setup,
  author: deck-config.author,
  institution: deck-config.institution,
  date: deck-config.date,
)
