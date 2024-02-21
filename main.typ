#import "template.typ": *

#show heading: set text(black)
// 项目具体描述的item设定
#set list(indent:12pt,body-indent:6pt)

// 个人信息
#show: project.with(
  name: "Luv_Ray",
)
#info(
  phone:"(+86) xxx",
  email:"xxx@xxx.com",
  github:"github.com/luv-ray"
)


== 教育背景
#line(length: 100%,stroke:0.7pt+black)
#education(
  school:"xxx大学",
  major:"计算机科学与技术",
  degree:"本科",
  date:"2021 年 – 2025 年",
  grade:"GPA:xxx(100)，年级前 xxx%",
)[]


== 荣誉奖项
#line(length: 100%,stroke:0.7pt+black)
#[
#prize(
  game:"比赛",
  grade:"奖项",
  date:"time"
)[]
#prize(
  game:"比赛",
  grade:"奖项",
  date:"time"
)[]
#prize(
  game:"比赛",
  grade:"奖项",
  date:"time"
)[]
]

// 此句设置斜体，可以全局也可以在段落中间加
// #set text(style:"italic")
== 工作经历
#line(length: 100%,stroke:0.7pt+black)
#experience(
  name:"xx公司",
  type:"实习",
  description:"职位介绍",
  date:"time",
)[
  - 具体描述
  - 具体描述
  - 具体描述
]

== 项目经历
#line(length: 100%,stroke:0.7pt+black)
#experience(
  name:"xx项目",
  type:"开源项目",
  description:"项目介绍",
  date:"time",
)[
  // 两种列表形式，自选
  #list(
    [具体描述],
    [具体描述],
    [具体描述] 
  )
]
#experience(
  name:"xx项目",
  type:"课程项目",
  description:"项目介绍",
  date:"time",
)[
  #list(
    [具体描述],
    [具体描述],
    [具体描述] 
  )
]

== 专业技能
#line(length: 100%,stroke:0.7pt+black)
#other()[
  - Rust
  - git
  - English
]




== 其他
#line(length: 100%,stroke:0.7pt+black)
#other()[
  Blog: https://xxx.blog
]