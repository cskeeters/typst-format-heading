#import "@local/format-headings:0.1.0": *

// Test with different font sizes
#set text(size:11pt)

#{
  align(center, text(size: 2em, weight: 900, [Typst Package for Enums]))
  v(1em)
}

*Package Name*: format-headings \
*Package Version*: 0.1.0 \



= Functions

This packages consts of the utility functions:

/ *format_headings_spacing* : \
  Applies spacing before and after headings.

/ *heading_underline* : \
  Underlines headings similar to GitHub.


#pagebreak()

= Sample Usage

```typst
#import "@local/format-headings:0.1.0": *

// Numbering
#set heading(numbering: "1.1")

// Text to prepend to reference numbering (@intro)
#show heading.where(level:1): set heading(supplement: "Chapter")
#show heading.where(level:2): set heading(supplement: "Section")
#show heading.where(level:3): set heading(supplement: "Subsection")


// Font Styling Per Level
#show heading.where(level:1): it => { text(weight: 800, it) }
#show heading.where(level:2): it => { text(weight: 600, style: "italic", it) }
#show heading.where(level:3): it => { text(weight: 600, it) }

// Set Heading Fonts
#show heading: it => {
  // https://beautifulwebtype.com/vollkorn/
  set text(font: "Vollkorn", number-width: "proportional", features: ("pnum", "lnum"))
  it
}

// Set Heading Spacing
#show: format_headings_spacing

// Set Heading Underline
#show heading.where(level:1): it => heading_underline(it)
// #show heading.where(level:2): it => heading_underline(it)
// #show heading.where(level:3): it => heading_underline(it)

// Set Page break Before Heading.  This has to be last
#show heading.where(level:1): it => { pagebreak(weak: true); it }
```



#pagebreak()

= Demonstration

// Numbering
#set heading(numbering: "1.1")

// Supplemental Text with @Reference
#show heading.where(level:1): set heading(supplement: "Chapter")
#show heading.where(level:2): set heading(supplement: "Section")
#show heading.where(level:3): set heading(supplement: "Subsection")


// Font Styling Per Level
#show heading.where(level:1): it => { text(weight: 800, it) }
#show heading.where(level:2): it => { text(weight: 600, style: "italic", it) }
#show heading.where(level:3): it => { text(weight: 600, it) }

// Set Heading Fonts
#show heading: it => {
  // See https://beautifulwebtype.com/vollkorn/
  set text(font: "Vollkorn", number-width: "proportional", features: ("pnum", "lnum", "zero"))
  // set text(font: "Inter", weight: 900)
  // set text(font: "Lato", weight: 900)
  // set text(font: "Oswald", weight: 900)
  // set text(font: "Lora", weight: 900)
  it
}

//#show heading.where(level:1): it => {
//  text(font: "Oswald", weight: 900, it)
//}


// Set Heading Spacing
#show: format_headings_spacing

// Set Heading Underline
#show heading.where(level:1): it => heading_underline(it)
// #show heading.where(level:2): it => heading_underline(it)
// #show heading.where(level:3): it => heading_underline(it)

// Set Page break Before Heading.  This has to be last
// #show heading.where(level:1): it => { pagebreak(weak: true); it }

= Heading 1 <h1>

#lorem(24)


== Heading 2 <h2>

#lorem(24)


=== Heading 3 <h3>

#lorem(24)

// Disable heading numbering for "Appendix" headings
#set heading(numbering: none)

= References With Suplemental Text

@h1

@h2

@h3
