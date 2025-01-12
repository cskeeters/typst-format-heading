#let format_headings_spacing(
  break_before_h1:false,
  hardcopy:false,
  above:1.6em,
  below:1.0em,
  body) = {

  show heading.where(level:1): it => {
    if break_before_h1 {
      if hardcopy {
        pagebreak(weak: true, to: "odd")
      } else {
        pagebreak(weak: true)
      }
    }
    block(width: 100%, above: above, below: below, it)
  }

  show heading.where(level:2): it => {
    block(above: 1.3em, below: 1em, it)
  }

  show heading.where(level:3): it => {
    block(above: 1.3em, below: .9em, it)
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
