#import "/template.typ": template
#import "@preview/quill:0.7.2": *
#import "@preview/km:0.1.0": karnaugh

#show: template.with(
  course: [Arquitectura de Computadoras],
  cover: image("images/cover.png"),
)

#quantum-circuit(
  gate($X$, radius: 100%),
)
