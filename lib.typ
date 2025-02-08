#let format_headings_spacing(
  break_before_h1:false,
  hardcopy:false,
  above:1.6em,
  below:1.0em,
  body) = {

  show heading: set block(above: above, below: below)

  show heading.where(level:1): it => {
    if break_before_h1 {
      if hardcopy {
        pagebreak(weak: true, to: "odd")
      } else {
        pagebreak(weak: true)
      }
    }
    it
  }

  body
}

#let heading_underline(it) = {
  block(
    width: 100%,
    inset: (bottom: .6em),
    stroke: (bottom: .5pt+black.lighten(80%)),
    above: 1.5em,
    below: .7em,
    it
  )
}
