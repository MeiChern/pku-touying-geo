#import "../../slides/index.typ": (
  subject-content-page,
  subject-text-image-page,
  subject-triple-gallery-page,
)

#let _or-auto(value, fallback) = if value == auto { fallback } else { value }

#let _normalize-image-path(path) = if (
  type(path) == str and not path.starts-with("/") and not path.starts-with(".")
) {
  "../../" + path
} else {
  path
}

#let _bullet-items(items, empty: [No items provided.]) = [
  #if items.len() == 0 [
    #empty
  ] else [
    #for item in items [
      - #item
    ]
  ]
]

#let geo-study-area-page(
  setup,
  map,
  title: auto,
  summary: [],
  caption: none,
  points: (),
  swap-sides: true,
  ..args,
) = subject-text-image-page(
  _normalize-image-path(map),
  title: _or-auto(title, setup.labels.study-area),
  header-left-offset: 10em,
  top-content: summary,
  image-caption: caption,
  swap-sides: swap-sides,
  text-body: _bullet-items(points),
  ..args,
)

#let geo-data-page(
  setup,
  title: auto,
  summary: [],
  datasets: (),
  notes: (),
  ..args,
) = subject-content-page(
  title: _or-auto(title, setup.labels.data),
  header-left-offset: 10em,
  top-content: summary,
  content: [
    #if datasets.len() > 0 [
      #strong[Data sources]

      #_bullet-items(datasets)
    ]

    #if notes.len() > 0 [
      #v(0.4em)
      #strong[Use in this report]

      #_bullet-items(notes)
    ]
  ],
  ..args,
)

#let geo-method-page(
  setup,
  workflow: none,
  title: auto,
  summary: [],
  caption: none,
  steps: (),
  ..args,
) = {
  let actual-title = _or-auto(title, setup.labels.method)

  if workflow == none {
    subject-content-page(
      title: actual-title,
      header-left-offset: 10em,
      top-content: summary,
      content: _bullet-items(steps),
      ..args,
    )
  } else {
    subject-text-image-page(
      _normalize-image-path(workflow),
      title: actual-title,
      header-left-offset: 10em,
      top-content: summary,
      image-caption: caption,
      text-body: _bullet-items(steps),
      ..args,
    )
  }
}

#let geo-result-page(
  setup,
  figure,
  title: auto,
  summary: [],
  caption: none,
  points: (),
  swap-sides: false,
  ..args,
) = subject-text-image-page(
  _normalize-image-path(figure),
  title: _or-auto(title, setup.labels.results),
  header-left-offset: 10em,
  top-content: summary,
  image-caption: caption,
  swap-sides: swap-sides,
  text-body: _bullet-items(points),
  ..args,
)

#let geo-uncertainty-page(
  setup,
  title: auto,
  summary: [],
  assumptions: (),
  limitations: (),
  next-checks: (),
  ..args,
) = subject-content-page(
  title: _or-auto(title, setup.labels.uncertainty),
  header-left-offset: 10em,
  top-content: summary,
  content: [
    #if assumptions.len() > 0 [
      #strong[Assumptions]

      #_bullet-items(assumptions)
    ]

    #if limitations.len() > 0 [
      #v(0.4em)
      #strong[Limitations]

      #_bullet-items(limitations)
    ]

    #if next-checks.len() > 0 [
      #v(0.4em)
      #strong[Next checks]

      #_bullet-items(next-checks)
    ]
  ],
  ..args,
)

#let geo-three-figure-page(
  setup,
  image-one,
  image-two,
  image-three,
  title: auto,
  summary: [],
  text-body: [],
  image-one-caption: [],
  image-two-caption: [],
  image-three-caption: [],
  ..args,
) = subject-triple-gallery-page(
  title: _or-auto(title, setup.labels.results),
  header-left-offset: 10em,
  text-body: [
    #summary
    #v(0.2em)
    #text-body
  ],
  image-one: _normalize-image-path(image-one),
  image-two: _normalize-image-path(image-two),
  image-three: _normalize-image-path(image-three),
  image-one-caption: image-one-caption,
  image-two-caption: image-two-caption,
  image-three-caption: image-three-caption,
  ..args,
)
