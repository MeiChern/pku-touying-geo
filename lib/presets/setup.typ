#let geo-language-labels(language: "en") = if language == "cn" {
  (
    agenda: [目录],
    content-marker: [CONTENT],
    section-marker: [部分],
    references: [参考文献],
    end-title: [谢谢聆听],
    study-area: [研究区与地质背景],
    data: [数据与观测],
    method: [方法流程],
    results: [关键结果],
    uncertainty: [不确定性与局限],
    conclusion: [结论],
  )
} else {
  (
    agenda: [Agenda],
    content-marker: [CONTENT],
    section-marker: [PART],
    references: [References],
    end-title: [Thank You],
    study-area: [Study Area & Geologic Setting],
    data: [Data & Observations],
    method: [Method Workflow],
    results: [Key Results],
    uncertainty: [Uncertainty & Limitations],
    conclusion: [Conclusions],
  )
}

#let geo-font-stack(language: "en") = if language == "cn" {
  ("Songti SC", "STSong", "Avenir Next", "Helvetica Neue")
} else {
  ("Avenir Next", "Helvetica Neue", "Arial", "Songti SC", "STSong")
}

#let geo-venue-profile(venue: "pku") = if venue == "agu" {
  (
    name: [AGU],
    primary: rgb("#1F5C99"),
    accent: rgb("#C96F37"),
    identity: [conference],
    footer-policy: "compact",
  )
} else if venue == "egu" {
  (
    name: [EGU],
    primary: rgb("#2E6F5E"),
    accent: rgb("#C69C3F"),
    identity: [conference],
    footer-policy: "compact",
  )
} else if venue == "group" {
  (
    name: [Group Meeting],
    primary: rgb("#8F1D22"),
    accent: rgb("#4F7F73"),
    identity: [internal],
    footer-policy: "light",
  )
} else if venue == "generic" {
  (
    name: [Academic],
    primary: rgb("#3D5366"),
    accent: rgb("#8C6A43"),
    identity: [academic],
    footer-policy: "compact",
  )
} else {
  (
    name: [Peking University],
    primary: rgb("#8F1D22"),
    accent: rgb("#4F7F73"),
    identity: [pku],
    footer-policy: "compact",
  )
}

#let geo-density-profile(density: "normal") = if density == "light" {
  (
    name: "light",
    figure-first: true,
    point-limit: 3,
    detail-level: "low",
  )
} else if density == "dense" {
  (
    name: "dense",
    figure-first: true,
    point-limit: 6,
    detail-level: "high",
  )
} else {
  (
    name: "normal",
    figure-first: true,
    point-limit: 4,
    detail-level: "medium",
  )
}

#let geo-objective-sections(objective: "conference", language: "en") = {
  let cn = language == "cn"

  if objective == "group-meeting" {
    if cn {
      ([上次进展], [本周结果], [问题与风险], [下步计划])
    } else {
      ([Previous Progress], [Current Results], [Issues & Risks], [Next Steps])
    }
  } else if objective == "collaborator-briefing" {
    if cn {
      ([共同背景], [现有证据], [需要决策], [后续分工])
    } else {
      ([Shared Context], [Current Evidence], [Decisions Needed], [Next Actions])
    }
  } else if objective == "defense" {
    if cn {
      ([研究动机], [科学问题], [方法与数据], [结果验证], [贡献与展望])
    } else {
      ([Motivation], [Research Questions], [Data & Method], [Validation], [Contributions])
    }
  } else if objective == "paper-discussion" {
    if cn {
      ([论文背景], [方法框架], [核心图件], [优点与局限], [讨论问题])
    } else {
      ([Paper Context], [Method], [Key Figures], [Strengths & Limits], [Discussion Questions])
    }
  } else {
    if cn {
      ([研究背景], [研究区与数据], [方法], [结果], [讨论], [结论])
    } else {
      ([Background], [Study Area & Data], [Method], [Results], [Discussion], [Conclusions])
    }
  }
}

#let geo-setup(
  language: "en",
  venue: "pku",
  objective: "conference",
  density: "normal",
) = (
  language: language,
  venue: venue,
  objective: objective,
  density: density,
  labels: geo-language-labels(language: language),
  fonts: geo-font-stack(language: language),
  venue-profile: geo-venue-profile(venue: venue),
  density-profile: geo-density-profile(density: density),
  default-sections: geo-objective-sections(objective: objective, language: language),
)

