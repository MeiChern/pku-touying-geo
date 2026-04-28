#import "../presets/setup.typ": geo-objective-sections

#let geo-default-sections(setup) = geo-objective-sections(
  objective: setup.objective,
  language: setup.language,
)

#let geo-numbered-sections(setup) = {
  let sections = geo-default-sections(setup)

  if sections.len() == 4 {
    ([01 / #sections.at(0)], [02 / #sections.at(1)], [03 / #sections.at(2)], [04 / #sections.at(3)])
  } else if sections.len() == 5 {
    ([01 / #sections.at(0)], [02 / #sections.at(1)], [03 / #sections.at(2)], [04 / #sections.at(3)], [05 / #sections.at(4)])
  } else {
    ([01 / #sections.at(0)], [02 / #sections.at(1)], [03 / #sections.at(2)], [04 / #sections.at(3)], [05 / #sections.at(4)], [06 / #sections.at(5)])
  }
}

