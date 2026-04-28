#import "../lib/geo-presentation.typ": *

#let setup = geo-setup(
  language: "en",
  venue: "pku",
  objective: "collaborator-briefing",
  density: "light",
)

#show: geo-theme.with(setup: setup)

#geo-cover-page(
  setup,
  title: [Collaborator Briefing Example],
  subtitle: [Shared context, evidence, decisions, actions],
  author: [Researcher Name],
  institution: [Peking University],
  date: [2026-04-26],
)

#geo-agenda-page(
  setup,
  sections: geo-numbered-sections(setup),
)

#geo-data-page(
  setup,
  summary: [Briefings should expose what evidence is ready, what remains uncertain, and what collaborators need to decide.],
  datasets: (
    [Shared observations and processed products.],
    [Open data gaps that affect interpretation.],
    [Figures or tables ready for joint review.],
  ),
  notes: (
    [Keep the page oriented around decisions, not exhaustive method detail.],
    [Move technical derivations to backup pages if needed.],
  ),
)

#geo-uncertainty-page(
  setup,
  summary: [A collaborator briefing needs explicit risks and next checks.],
  assumptions: (
    [Inputs are comparable across sites or acquisition windows.],
    [The current interpretation is sufficient for deciding next work.],
  ),
  limitations: (
    [Some data products remain placeholders in this example.],
    [Real briefings need owner/date/action tracking.],
  ),
  next-checks: (
    [Assign validation tasks.],
    [Agree on figures for the next draft.],
  ),
)

#geo-end-page(
  setup,
  author: [Researcher Name],
  institution: [Peking University],
  date: [2026-04-26],
)

