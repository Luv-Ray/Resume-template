// Note: 本模板修改自 https://typst.app/project/p1sVlu8OxI122an3_UdDfG

#let black = rgb(0,0,0)
#let gray = rgb(128,128,128)
#let miku = rgb(57, 197, 187)

#let project(
  name: "",
  body
) = {
  // 标题
  set document(title: name)
  // 页边距设定
  set page(paper: "a4", margin: (
    top: 1.8cm,
    bottom: 1.8cm,
    left: 2cm,
    right: 2cm
  ))
  set text(font: "Noto Serif CJK SC");
 
  // 设置标题（名字）字体
  block(text(weight: 345, 1.8em, name))
  // Main body.
  set par(justify: true)
  
  body
}

// 日期
#let dateFn(date:"",body) = {
  set text(
    font:"Noto Serif" ,
    fill:black,
    size:0.9em,
    // weight: 350
  )
  place(
    end,
    body
  )
}

// 个人信息
#let info(
  phone:"",
  email:"",
  github:""
) = {
   set text(font: "Noto Serif Balinese",size:1.16em,weight: 450)
   set box(baseline: 2pt)
   box(
    height: 11pt,
    image("icons/phone.svg")
   )
   h(3pt)
   phone
   h(5pt)
   `|`
   h(5pt)
   box(
    height: 11pt,
    image("icons/envelope.svg")
   )
   h(3pt)
   email
   h(5pt)
   `|`
   h(5pt)
   box(
    height: 11pt,
    image("icons/github.svg")
   )
   h(3pt)
   link("https://" + github)[#github]
}

// 教育背景
#let education(
  school:"",
  major:"",
  degree:"",
  date:"",
  grade:"",
  body
) = {
  dateFn[#date]
  set par(leading: 0.9em)
  set text(font: "Noto Serif CJK SC",size:1em,weight: 400)
  text[
    #strong(delta:280, school) 
    #h(10pt)#major
    #h(10pt)#degree 
    #linebreak() 
    #grade
  ]
  body
}

// 获奖情况（单个可复用）
#let prize(
  game:"",
  grade:"",
  date:"",
  body
) = {
  v(10pt, weak: true) // 更紧凑
  dateFn[#date]
  set text(font: "Noto Serif CJK SC",size:0.95em,weight: 400)
  text[
    // 用#box来保证间距不随内容变化
    #box(width:250pt)[#strong(delta:280, game)]
    #box(width:50pt)[#strong(delta:280, grade)]
  ]
}


// 项目 / 工作经历
#let experience(
  name:"",
  type:"",
  date:"",
  description:"",
  body
) = {
  dateFn[#date]
  set par(leading: 0.95em)
  set text(font:("Noto Serif","Noto Serif CJK SC"),size:0.95em,weight: 400,tracking:0.2pt)
  // 设置是否斜体：
  // set text(style:"italic")
  text[
    #set text(size: 1.05em)
    #strong(delta:280, name) #h(1em)
    #box(width:120pt)[#strong(delta:280, type)]
  ]
  linebreak() 
  text[#description]
  body
}


// 其他
#let other(
  body
) = {
  set text(font:("Noto Serif","Noto Serif CJK SC"),size:0.95em,weight: 400,tracking:0.2pt)
  // set text(font: "Noto Serif CJK SC",size:0.95em,weight: 400)
  body
}
