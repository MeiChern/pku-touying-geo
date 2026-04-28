#import "../lib/geo-presentation.typ": *

#let setup = geo-setup(
  language: "cn",
  venue: "group",
  objective: "group-meeting",
  density: "dense",
)

#show: geo-theme.with(setup: setup)

#geo-cover-page(
  setup,
  title: [地学组会汇报示例],
  subtitle: [组合式预设与语义组件验证],
  author: [汇报人],
  institution: [北京大学],
  date: [2026-04-26],
)

#geo-agenda-page(
  setup,
  sections: geo-numbered-sections(setup),
)

#geo-data-page(
  setup,
  summary: [组会汇报应优先说明本周新增数据、处理状态和阻塞问题。],
  datasets: (
    [新增遥感影像、DEM、野外记录或时间序列。],
    [已完成预处理与质量检查的数据。],
    [仍需确认来源、坐标或误差的数据。],
  ),
  notes: (
    [区分已经完成的事实和仍在验证的判断。],
    [把需要讨论的问题放在单独页面。],
  ),
)

#geo-result-page(
  setup,
  "figures/background.png",
  summary: [组会结果页可以更密集，但仍应保持一个页面一个核心问题。],
  caption: [占位结果图。],
  points: (
    [本周最重要的新结果。],
    [与上次汇报相比的变化。],
    [需要老师或合作者判断的问题。],
  ),
)

#geo-end-page(
  setup,
  author: [汇报人],
  institution: [北京大学],
  date: [2026-04-26],
)
