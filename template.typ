#import "@preview/zebraw:0.5.5": zebraw
#import "@preview/theorion:0.4.0": *

#let template(
  course: content,
  cover: [image],
  subtitle: [Notas de clase],
  author: "José Daniel Grayson",
  doc,
) = {
  show: show-theorion
  show: zebraw

  set document(
    title: course,
    description: subtitle,
    author: author,
  )
  set page(
    paper: "a4",
    header: align(right + horizon, course),
  )
  set text(lang: "es", font: "Comic Neue")
  set heading(numbering: "1.")

  set-qed-symbol[#math.qed]

  page(
    numbering: none,
    header: none,
    {
      align(center, [
        #text(20pt, course)

        #text(16pt, subtitle)

        #author

        #v(1em)
        #set image(height: 300pt)
        #cover
        #set image(height: auto)
        #v(1em)
      ])

      outline()
    },
  )

  doc
}
