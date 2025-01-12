This Typst package contains to templates for stylizing headings.

* `format_headings_spacing` - Applies spacing before and after headings.
* `heading_underline` - Underlines headings similar to GitHub.


# Sample Usage

```typst
#import "@local/format-headings:0.1.0": *

// Set Heading Spacing
#show: format_headings_spacing

// Set Heading Underline
#show heading.where(level:1): it => heading_underline(it)
// #show heading.where(level:2): it => heading_underline(it)
// #show heading.where(level:3): it => heading_underline(it)
```

## Other Settings

The following settings are available without this library, and are shown here for reference.

```typst
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

// Set Page break Before Heading.  This has to be last
#show heading.where(level:1): it => { pagebreak(weak: true); it }
```
