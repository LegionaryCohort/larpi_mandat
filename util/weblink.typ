#let weblink(display: str, url: str) = {
  if display == str {
    display = url
  }
  show link: set text(fill: blue)
  show link: underline
  link(url)[#display]
}
