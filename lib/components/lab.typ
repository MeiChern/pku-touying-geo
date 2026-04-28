#import "@preview/touying:0.6.1": *
#import "../../style/shared/base.typ": page-background, palette

#let geo-lab-logo = "figures/lab-logo/Natural_Hazards_Remote_Sensing_Lab_logo_nhrs_lab_transparent.png"
#let geo-lab-logo-chroma = "figures/lab-logo/Natural_Hazards_Remote_Sensing_Lab_logo_nhrs_lab_chroma.png"
#let geo-lab-logo-plain = "figures/lab-logo/Natural_Hazards_Remote_Sensing_Lab_logo.png"
#let geo-lab-qr-code = "figures/lab-logo/nhrslab_qr_code.png"
#let geo-cues-circle-logo = "figures/identity/CUES_circle_logo.png"
#let geo-cues-long-logo = "figures/identity/CUES_long_rect_logo_transparent_cropped.png"

#let _or-auto(value, fallback) = if value == auto { fallback } else { value }

#let _two-digit-number(value) = if value < 10 {
  "0" + str(value)
} else {
  str(value)
}

#let _normalize-asset-path(path) = if (
  type(path) == str and not path.starts-with("/") and not path.starts-with(".")
) {
  "../../" + path
} else {
  path
}

#let _logo-image(logo, width: auto, height: auto) = if height == auto {
  image(_normalize-asset-path(logo), width: width)
} else {
  image(_normalize-asset-path(logo), height: height)
}

#let _white-background() = rect(width: 100%, height: 100%, fill: white)

#let _image-tile(path, height: 5em, caption: none, fit: "cover") = [
  #block(width: 100%, height: height)[
    #image(_normalize-asset-path(path), width: 100%, height: height, fit: fit)
  ]
  #if caption != none [
    #v(0.16em)
    #text(size: 0.58em, fill: palette.muted)[#caption]
  ]
]

#let _slide-number-label() = context [
  #let current = utils.slide-counter.get().first()
  #let total = utils.last-slide-counter.final().first()
  #_two-digit-number(current)/#_two-digit-number(total)
]

#let _lab-footer(self) = context align(right + bottom)[
  #text(size: 0.62em, fill: palette.muted)[#utils.slide-counter.display()]
]

#let _lab-content-footer(
  self,
  cues-logo: geo-cues-long-logo,
  cues-logo-width: auto,
  cues-logo-height: 2.12em,
) = context block(width: 100%, height: 2.25em)[
  #place(left + bottom, dx: 0em, dy: 0em, _logo-image(
    cues-logo,
    width: cues-logo-width,
    height: cues-logo-height,
  ))
  #place(right + bottom, dx: 0em, dy: -0.08em)[
    #text(size: 0.72em, weight: "bold", fill: rgb("#777777"))[
      #_slide-number-label()
    ]
  ]
]

#let _bullet-items(items, empty: [No items provided.]) = [
  #if items.len() == 0 [
    #empty
  ] else [
    #for item in items [
      - #item
    ]
  ]
]

#let _source-note(source) = if source == none {
  []
} else [
  #v(0.55em)
  #text(size: 0.62em, fill: palette.muted)[#source]
]

#let _three-column-body(
  one-title,
  one-items,
  two-title,
  two-items,
  three-title,
  three-items,
  source: none,
) = [
  #grid(
    columns: (1fr, 1fr, 1fr),
    column-gutter: 1.05em,
    [
      #text(weight: "bold", fill: palette.primary)[#one-title]
      #v(0.22em)
      #_bullet-items(one-items)
    ],
    [
      #text(weight: "bold", fill: palette.primary)[#two-title]
      #v(0.22em)
      #_bullet-items(two-items)
    ],
    [
      #text(weight: "bold", fill: palette.primary)[#three-title]
      #v(0.22em)
      #_bullet-items(three-items)
    ],
  )
  #_source-note(source)
]

#let geo-lab-cover-page(
  setup,
  title: [Natural Hazards Remote Sensing Lab],
  subtitle: [Remote sensing for active hazards, deformation, and landscapes],
  author: none,
  institution: [PKU CUES],
  date: none,
  logo: auto,
  logo-width: 12em,
  logo-height: 6.1em,
  left-logo: auto,
  left-logo-width: 32.6em,
  left-logo-height: auto,
  left-logo-patch-width: 33.3em,
  left-logo-patch-fill: rgb("#D1D1D1"),
  left-logo-patch-height: 6.62em,
  qr-code: none,
  qr-width: 3.5em,
  title-size: 2.45em,
  subtitle-size: 1.18em,
  ..args,
) = touying-slide-wrapper(self => {
  let actual-logo = _or-auto(logo, geo-lab-logo)
  let actual-left-logo = _or-auto(left-logo, geo-cues-long-logo)
  let actual-left-logo-height = _or-auto(left-logo-height, logo-height)
  let config = utils.merge-dicts(
    config-page(
      background: page-background(),
      margin: (top: 1.1em, bottom: 1.2em, x: 1.35em),
      header: self => [],
      footer: self => _lab-footer(self),
    ),
  )

  touying-slide(
    self: self,
    config: config,
    block(width: 100%, height: 100%)[
      #place(left + top, dx: -0.08em, dy: -0.05em, rect(
        width: left-logo-patch-width,
        height: left-logo-patch-height,
        fill: left-logo-patch-fill,
        stroke: none,
      ))
      #place(left + top, dx: 0em, dy: 0em, _logo-image(
        actual-left-logo,
        width: left-logo-width,
        height: actual-left-logo-height,
      ))
      #place(right + top, dx: -0.15em, dy: 0em, _logo-image(
        actual-logo,
        width: logo-width,
        height: logo-height,
      ))
      #if qr-code != none [
        #place(right + bottom, dx: -0.2em, dy: -0.6em, _logo-image(qr-code, width: qr-width))
      ]
      #align(center + horizon)[
        #block(width: 86%)[
          #set align(center)
          #text(size: title-size, weight: "bold", fill: palette.ink)[#title]
          #if subtitle != none [
            #v(0.36em)
            #text(size: subtitle-size, fill: palette.primary)[#subtitle]
          ]
          #v(0.48em)
          #line(length: 38%, stroke: 1.0pt + palette.line)
          #if author != none [
            #v(0.5em)
            #text(size: 1.0em, weight: "bold", fill: palette.primary)[#author]
          ]
          #if institution != none [
            #v(0.18em)
            #text(size: 0.82em, fill: palette.muted)[#institution]
          ]
          #if date != none [
            #v(0.18em)
            #text(size: 0.82em, fill: palette.muted)[#date]
          ]
        ]
      ]
    ],
    ..args,
  )
})

#let geo-lab-page(
  setup,
  title: none,
  subtitle: none,
  body: [],
  logo: auto,
  logo-width: 7.6em,
  header-gap: 0.55em,
  footer-cues-logo: auto,
  footer-cues-logo-width: auto,
  footer-cues-logo-height: 2.12em,
  body-top-gap: 1.35em,
  content-size: 0.86em,
  content-leading: 0.62em,
  ..args,
) = touying-slide-wrapper(self => {
  let actual-logo = _or-auto(logo, geo-lab-logo)
  let actual-footer-cues-logo = _or-auto(footer-cues-logo, geo-cues-long-logo)
  let config = utils.merge-dicts(
    config-page(
      background: _white-background(),
      margin: (top: 0.82em, bottom: 0.78em, x: 1.1em),
      header: self => [],
      footer: self => [],
    ),
  )

  touying-slide(
    self: self,
    config: config,
    block(width: 100%, height: 100%)[
      #grid(
        rows: (auto, 1fr, auto),
        row-gutter: header-gap,
        [
          #grid(
            columns: (1fr, logo-width),
            column-gutter: 1.0em,
            align: (left + horizon, right + horizon),
            [
              #if title != none [
                #text(size: 1.36em, weight: "bold", fill: palette.ink)[#title]
                #if subtitle != none [
                  #v(0.12em)
                  #text(size: 0.7em, fill: palette.muted)[#subtitle]
                ]
              ]
            ],
            [
              #_logo-image(actual-logo, width: logo-width)
            ],
          )
          #v(0.16em)
          #line(length: 100%, stroke: 0.85pt + palette.line)
        ],
        [
          #block(width: 100%, height: 100%)[
            #v(body-top-gap)
            #set text(size: content-size, fill: palette.ink)
            #set par(leading: content-leading)
            #body
          ]
        ],
        [
          #_lab-content-footer(
            self,
            cues-logo: actual-footer-cues-logo,
            cues-logo-width: footer-cues-logo-width,
            cues-logo-height: footer-cues-logo-height,
          )
        ],
      )
    ],
    ..args,
  )
})

#let geo-lab-agenda-page(
  setup,
  title: auto,
  sections: (),
  marker: [OUTLINE],
  ..args,
) = {
  let actual-title = _or-auto(title, setup.labels.agenda)

  geo-lab-page(
    setup,
    title: actual-title,
    subtitle: marker,
    body: [
      #block(width: 72%)[
        #if sections.len() == 0 [
          #text(fill: palette.muted)[No agenda items provided.]
        ] else [
          #set text(size: 1.02em)
          #for (index, section) in sections.enumerate() [
            #grid(
              columns: (2.2em, 1fr),
              column-gutter: 0.6em,
              align: (right + top, left + top),
              [
                #text(weight: "bold", fill: palette.primary)[#_two-digit-number(index + 1)]
              ],
              [
                #section
              ],
            )
            #if index + 1 < sections.len() [
              #v(0.42em)
              #line(length: 100%, stroke: 0.7pt + palette.line)
              #v(0.42em)
            ]
          ]
        ]
      ]
    ],
    ..args,
  )
}

#let geo-lab-focus-page(
  setup,
  title: [NHRS Lab Research Focus],
  summary: [A lab-template overview page for connecting observations, hazard processes, and decision-ready outputs.],
  observations: (),
  hazards: (),
  outputs: (),
  source: none,
  ..args,
) = geo-lab-page(
  setup,
  title: title,
  subtitle: summary,
  body: _three-column-body(
    [Observations],
    observations,
    [Hazard Systems],
    hazards,
    [Outputs],
    outputs,
    source: source,
  ),
  ..args,
)

#let geo-lab-project-page(
  setup,
  title: [Project Template],
  question: [],
  observations: (),
  methods: (),
  interpretation: (),
  source: none,
  ..args,
) = geo-lab-page(
  setup,
  title: title,
  subtitle: question,
  body: _three-column-body(
    [Data],
    observations,
    [Methods],
    methods,
    [Interpretation],
    interpretation,
    source: source,
  ),
  ..args,
)

#let geo-lab-group-page(
  setup,
  title: [Meet NHRS Lab],
  summary: [A figure-first group introduction slide for lab briefings and visitor talks.],
  group-image: none,
  field-image: none,
  research-image: none,
  points: (),
  source: none,
  ..args,
) = geo-lab-page(
  setup,
  title: title,
  subtitle: summary,
  body: [
    #grid(
      columns: (1.18fr, 0.92fr),
      column-gutter: 0.78em,
      [
        #_image-tile(group-image, height: 8.5em, caption: [Crew, students, and visitor community])
        #v(0.36em)
        #_bullet-items(points)
      ],
      [
        #_image-tile(
          field-image,
          height: 4.25em,
          caption: [Field observation and instrument deployment],
        )
        #v(0.45em)
        #_image-tile(
          research-image,
          height: 4.25em,
          caption: [Remote-sensing deformation products],
        )
        #_source-note(source)
      ],
    )
  ],
  ..args,
)

#let geo-lab-publication-page(
  setup,
  title: [Recent Work To Showcase],
  summary: [Use this page to connect current lab outputs to the talk narrative without turning the slide into a full bibliography.],
  highlights: (),
  source: none,
  ..args,
) = geo-lab-page(
  setup,
  title: title,
  subtitle: summary,
  body: [
    #_bullet-items(highlights)
    #_source-note(source)
  ],
  ..args,
)

#let geo-lab-summary-page(
  setup,
  title: auto,
  summary: [],
  points: (),
  source: none,
  ..args,
) = geo-lab-page(
  setup,
  title: _or-auto(title, setup.labels.conclusion),
  subtitle: summary,
  body: [
    #_bullet-items(points)
    #_source-note(source)
  ],
  ..args,
)

#let geo-lab-references-page(
  setup,
  title: auto,
  entries: (),
  ..args,
) = geo-lab-page(
  setup,
  title: _or-auto(title, setup.labels.references),
  body: [
    #if entries.len() == 0 [
      #text(fill: palette.muted)[No references provided.]
    ] else [
      #set text(size: 0.76em)
      #set par(leading: 0.54em)
      #for (index, entry) in entries.enumerate() [
        #grid(
          columns: (1.8em, 1fr),
          column-gutter: 0.35em,
          align: (right + top, left + top),
          [#text(fill: palette.muted)[#str(index + 1).]],
          [#entry],
        )
        #v(0.28em)
      ]
    ]
  ],
  ..args,
)

#let geo-lab-end-page(
  setup,
  title: auto,
  subtitle: none,
  author: none,
  institution: [PKU CUES],
  date: none,
  logo: auto,
  logo-width: 12em,
  logo-height: 6.1em,
  left-logo: auto,
  left-logo-width: 32.6em,
  left-logo-height: auto,
  left-logo-patch-width: 33.3em,
  left-logo-patch-fill: rgb("#D1D1D1"),
  left-logo-patch-height: 6.62em,
  qr-code: auto,
  qr-width: 3.5em,
  ..args,
) = geo-lab-cover-page(
  setup,
  title: _or-auto(title, setup.labels.end-title),
  subtitle: subtitle,
  author: author,
  institution: institution,
  date: date,
  logo: logo,
  logo-width: logo-width,
  logo-height: logo-height,
  left-logo: left-logo,
  left-logo-width: left-logo-width,
  left-logo-height: left-logo-height,
  left-logo-patch-width: left-logo-patch-width,
  left-logo-patch-fill: left-logo-patch-fill,
  left-logo-patch-height: left-logo-patch-height,
  qr-code: _or-auto(qr-code, geo-lab-qr-code),
  qr-width: qr-width,
  ..args,
)
