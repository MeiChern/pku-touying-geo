#import "../../style/index.typ": presentation-theme
#import "../../slides/index.typ": (
  agenda-page,
  cover-page,
  end-page,
  references-manual-page,
  subject-content-page,
  transition-page,
)

#let geo-theme(setup: none, ..args, body) = presentation-theme(..args, body)

#let _or-auto(value, fallback) = if value == auto { fallback } else { value }

#let _normalize-asset-path(path) = if (
  type(path) == str and not path.starts-with("/") and not path.starts-with(".")
) {
  "../../" + path
} else {
  path
}

#let _logo-content(logo, logo-width) = if logo == none {
  none
} else if type(logo) == str {
  image(_normalize-asset-path(logo), width: logo-width)
} else {
  logo
}

#let geo-cover-page(
  setup,
  logo: none,
  logo-width: 13.5em,
  logo-gap: 0.8em,
  title: none,
  subtitle: none,
  author: none,
  institution: none,
  date: none,
  ..args,
) = cover-page(
  logo: _logo-content(logo, logo-width),
  logo-gap: logo-gap,
  title: title,
  subtitle: subtitle,
  author: author,
  institution: institution,
  date: date,
  ..args,
)

#let geo-agenda-page(
  setup,
  sections: (),
  title: auto,
  marker: auto,
  ..args,
) = agenda-page(
  title: _or-auto(title, setup.labels.agenda),
  marker: _or-auto(marker, setup.labels.content-marker),
  sections: sections,
  left-card-dy: 1.5em,
  right-card-dy: 1.5em,
  ..args,
)

#let geo-section-page(
  setup,
  number: [01],
  title: none,
  description: none,
  marker: auto,
  ..args,
) = transition-page(
  number: number,
  marker: _or-auto(marker, setup.labels.section-marker),
  title: title,
  description: description,
  left-card-dy: 1.5em,
  right-card-dy: 1.5em,
  ..args,
)

#let geo-summary-page(
  setup,
  title: auto,
  top-content: [],
  content: [],
  ..args,
) = subject-content-page(
  title: _or-auto(title, setup.labels.conclusion),
  top-content: top-content,
  content: content,
  header-left-offset: 10em,
  ..args,
)

#let geo-references-page(
  setup,
  entries: (),
  title: auto,
  ..args,
) = {
  let actual-entries = if entries.len() == 0 {
    (
      [Touying package documentation. Typst Universe. Used as the presentation framework backend.],
      [Project specs under `specs/`. Used as the durable contract for presets, components, recipes, and AI-agent workflow.],
    )
  } else {
    entries
  }

  references-manual-page(
    title: _or-auto(title, setup.labels.references),
    entries: actual-entries,
    ..args,
  )
}

#let geo-end-page(
  setup,
  title: auto,
  subtitle: none,
  author: none,
  institution: none,
  date: none,
  ..args,
) = end-page(
  title: _or-auto(title, setup.labels.end-title),
  subtitle: subtitle,
  author: author,
  institution: institution,
  date: date,
  ..args,
)
