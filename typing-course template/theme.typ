
#let cpt_def = counter("cpt_def")
#let cpt_prop = counter("cpt_prop")
#let cpt_thm = counter("cpt_thm")
#let cpt_part = counter("cpt_part")
#let wedge = sym.and
#let equiv = sym.ident
// Size of the left "margin" (note area)
#let margin-size = 15%
// Spacer so that main content and notes don't rub up against each other
#let margin-space = 0.1in
#let imp(cont) ={
    text(fill: blue.darken(50%),cont,weight: "semibold",size: 1em)
}
#let def(
    description,
    title: none,
) = {
  cpt_def.step()
    set align(center)
    box(
         rect(
        width:100%,
        fill:blue.lighten(99%),
        radius:(
            left:5pt,
            right:5pt
        ),
        stroke: (
            left:blue,
            right: blue,
            top: black,
            bottom: black
        )
    )[
        #align(left)[
            #box(
              polygon(
                stroke: blue.lighten(99%),
                fill: blue,
                (-5%, 0.55em),
                (0%,-0.25em),
                (45%,-0.25em),
                (90%,-0.25em),
                (90%,1.15em),
                (45%,1.15em),
                (0%,1.15em),
                (-5%,0.55em)
                
                
              )
              + place(top+left)[#text(white,underline(smallcaps("Définition " + cpt_part.display("1") + "-" + cpt_def.display())),size:1.1em,weight: "medium")
            #text(white,"(" + title + ")",size:1em,weight: "semibold")
          ]
            )
          
        ]
        #align(left)[
            #text(black,description,size:1em)
        ]
    ]
  )
   
}

#let prop(
    description,
    title: none
) = {
    set align(center)
    cpt_prop.step()
    box(
         rect(
        width:100%,
        fill:blue.lighten(99%),
        radius:(
            left:5pt,
            right:5pt
        ),
        stroke: (
            left:blue.darken(20%),
            right: blue.darken(20%),
            top: black,
            bottom: black
        )
    )[
        #align(left)[
            #box(
              polygon(
                stroke: blue.lighten(99%),
                fill: blue.darken(20%),
                (-5%, 0.55em),
                (0%,-0.25em),
                (45%,-0.25em),
                (90%,-0.25em),
                (90%,1.15em),
                (45%,1.15em),
                (0%,1.15em),
                (-5%,0.55em)
                
                
              )
              + place(top+left)[#text(white,underline(smallcaps("Proposition " + cpt_part.display() + "-" + cpt_prop.display())),size:1.1em,weight: "medium")
            #text(white,"(" + title + ")",size:1em,weight: "semibold")
          ]
            )
          
        ]
        #align(left)[
            #text(black,description,size:1em)
        ]
    ]
  )
}
#let cb(cont,title: "titre") ={
    set align(left)
    box(
         rect(
        width:100%,
        fill:blue.lighten(99%),
        radius:(
            left:5pt,
            right:5pt
        ),
        stroke: (
            left:blue.darken(20%),
            right: blue.darken(20%),
            top: black,
            bottom: black
        )
    )[
        #align(left)[
            #box(
              polygon(
                stroke: blue.lighten(99%),
                fill: blue.darken(20%),
                (-5%, 0.55em),
                (0%,-0.25em),
                (45%,-0.25em),
                (90%,-0.25em),
                (90%,1.15em),
                (45%,1.15em),
                (0%,1.15em),
                (-5%,0.55em)
                
                
              )
              + place(top+left)[#text(white,underline(smallcaps("Code")),size:1.1em,weight: "medium")
            #text(white,"(" + title + ")",size:1em,weight: "semibold")
          ]
            )
          
        ]
        #align(left)[
            #cont
        ]
    ]
  )
}
#let th(
    description,
    title: none
) = {
    set align(center)
    cpt_thm.step()
    box(
        rect(
        width:100%,
        fill:blue.lighten(70%),
        radius:(
            left:5pt,
            right:5pt
        ),
        stroke: (
            left:blue.darken(50%),
            right: blue.darken(50%),
            top: black,
            bottom: black
        )
    )[
        #align(left)[
            #box(
              polygon(
                fill: blue.darken(50%),
                (-5%, 0.55em),
                (0%,-0.25em),
                (45%,-0.25em),
                (90%,-0.25em),
                (90%,1.15em),
                (45%,1.15em),
                (0%,1.15em),
                (-5%,0.55em)
                
                
              )
              + place(top+left)[#text(white,underline(smallcaps("Théorème "+ cpt_part.display() + "-" + cpt_thm.display())),size:1.1em,weight: "medium")
            #text(white,"(" + title + ")",size:1em,weight: "semibold")
          ]
            )
          
        ]
        #align(center)[
            #text(black,description,size:1em)
        ]
    ]
  )
}

#let rem(
  content
)={
  text(black,underline(smallcaps("Remarque"))) + ": " + content
}

#let reset_cpt()={
  cpt_def.update(0)
  cpt_prop.update(0)
  cpt_thm.update(0)
}

#let dem(
  content
) ={
  set align(left)
    box(
         rect(
        width:100%,
        fill:blue.lighten(99%),
        radius:(
            left:5pt,
            right:5pt
        ),
        stroke: (
            left:blue.darken(20%),
        )
    )[
        #align(left)[
            #box(
              place(top+left)[#text(black,underline(smallcaps("Démonstration")),size:1.1em,weight: "medium")
          ]
            )
          
        ]
        #align(left)[
          \ 
            #content
        ]
    ]
  )
}

#let enonce(
  content
) ={
  set align(center)
    box(
        rect(
        width:100%,
        fill:blue.lighten(70%),
        radius:(
            left:5pt,
            right:5pt
        ),
        stroke: (
            left:blue.darken(50%),
            right: blue.darken(50%),
            top: black,
            bottom: black
        )
    )[
        #align(left)[
            #box(
              polygon(
                fill: blue.darken(80%),
                (-5%, 0.55em),
                (0%,-0.25em),
                (45%,-0.25em),
                (90%,-0.25em),
                (90%,1.15em),
                (45%,1.15em),
                (0%,1.15em),
                (-5%,0.55em)
                
                
              )
              + place(top+left)[#text(white,underline(smallcaps("Enoncé" )),size:1.1em,weight: "medium")
              ]
            )
          
        ]
        #align(center)[
            #text(black,content,size:1em)
        ]
    ]
  )
}

#let margin-note(dy: -1em, content) = {
    place(
        right,
        dx: margin-size + margin-space,
        dy: dy,
        block(width: margin-size,
        rect(
        width:100%,
        fill:blue.lighten(99%),
        radius:(
            left:1pt,
            right:1pt
        ),
        stroke: (
            left:blue.darken(20%),
            top:blue.darken(40%)
        )
        )[
        
            #set text(size: 0.75em)
            #set align(left)
            #content
        ]
    ))
}

#let document(
    title: none,
    doc
    
) ={
    show heading.where(
    level: 1
    ): it => block(width: 100%)[
    #reset_cpt()
    #cpt_part.step()
    #set align(left)
    #set text(1.1em, weight: "regular")
    #imp(counter(heading).display()) #underline(smallcaps(it.body))
    ]

    show heading.where(
    level: 2
    ): it => block(width: 100%)[
    #set align(left)
    #set text(1.1em, weight: "regular")
    #imp(counter(heading).display()) #smallcaps(it.body))
    ]
    show heading.where(
    level: 3
    ): it => block(width: 100%)[
    #set align(left)
    #set text(1em, weight: "regular")
    #imp(counter(heading).display()) #smallcaps(it.body))
    ]
    show heading.where(
    level: 4
    ): it => block(width: 100%)[
    #set align(left)
    #set text(1em, weight: "regular")
    #imp(counter(heading).display()) #smallcaps(it.body)
    ]
    set page(
    paper: "us-letter",
    header : align(center)[your author name],
    numbering : "1/1",
)
    set heading(numbering: "I.1.a -")
    set text(font: "DejaVu",size: 1em)
    set align(center)
    text(2em,smallcaps(title))
    set align(left)
    set par(justify: true)
    grid(
      columns:(100%-margin-size, margin-size),
      doc,
    )
    
    

    
}