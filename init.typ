#let project(title: "", author: "", body) = {
  // Document setup
  set document(author: author, title: title)
  set page(
    paper: "a4",
    margin: (x: 2cm, y: 2cm),
    numbering: none,
  )
  set text(size: 11pt)

  // Colors
  let primary = rgb("#2D3748")
  let accent = rgb("#4299E1")

  // Header
  align(center)[
    #block(text(weight: 700, size: 24pt, primary)[#title])
    #v(1em)
  ]

  // Separator line
  line(length: 100%, stroke: 0.5pt + primary)

  // Content
  body
}

#show: project.with(
  title: "Portfolio",
  author: "t_o_d",
)

// Profile Section
#align(center)[
  #text(weight: 700, size: 20pt)[t_o_d]
  #v(0.5em)
]

// Skills Section
== Technical Skills
#v(0.5em)
#let skill(name, level) = {
  grid(
    columns: (1fr),
    rows: (auto),
    gutter: 3pt,
    [*#name*],
    box(width: 100%)[
      #box(width: level, height: 8pt, fill: rgb("#4299E1"), radius: 4pt)
      #box(width: 100% - level, height: 8pt, fill: rgb("#E2E8F0"), radius: 4pt)
    ]
  )
}

#grid(
  columns: (1fr, 1fr),
  gutter: 16pt,
  [
    #skill("HTML/CSS", 90%)
    #skill("JavaScript", 85%)
    #skill("TypeScript", 80%)
    #skill("Vue.js", 85%)
  ],
  [
    #skill("Shell Script", 75%)
    #skill("Docker", 80%)
    #skill("Ansible", 75%)
  ]
)

// Online Presence Section
== Online Presence
#v(0.5em)
#grid(
  columns: (auto, 1fr),
  gutter: 16pt,
  {
    table(
      columns: (auto, auto),
      stroke: none,
      align: left,
      row-gutter: 8pt,
      [*Blog:*], link("https://qiita.com/t_o_d")[Qiita],
      [], link("https://zenn.dev/t_o_d")[Zenn],
      [*GitHub:*], link("https://github.com/Kamekure-Maisuke")[GitHub Profile]
    )
  }
)

// Projects Section
== Featured Projects
#v(0.5em)
#let project-card(title, description) = {
  block(
    width: 100%,
    fill: rgb("#F7FAFC"),
    radius: 4pt,
    stroke: 0.5pt + rgb("#E2E8F0"),
    inset: 12pt,
  )[
    #text(weight: 700)[#title]
    #v(0.5em)
    #description
  ]
}

#grid(
  columns: (1fr),
  gutter: 16pt,
  project-card(
    "Infrastructure as Code",
    [- Ansible を用いた自動化システムの構築
     - Docker コンテナの最適化と運用
     - CI/CD パイプラインの実装]
  ),
  project-card(
    "Web Development",
    [- Vue.js を使用したSPAの開発
     - TypeScript による型安全な実装
     - レスポンシブデザインの実装]
  ),
)

// Contact Section
== Contact
#v(0.5em)
お気軽にGitHubやブログを通じてご連絡ください。
