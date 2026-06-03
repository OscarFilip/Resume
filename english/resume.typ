#set page(
  paper: "a4",
  margin: (x: 1.25cm, y: 1.25cm),
)

#set text(
  font: "New Computer Modern",
  size: 9.3pt,
  lang: "en",
)

#set par(
  leading: 0.46em,
  spacing: 0.45em,
)

#set list(
  indent: 0.95em,
  body-indent: 0.45em,
  spacing: 0.35em,
)

#let accent = rgb("#1f5d8f")
#let muted = rgb("#5e6a73")
#let sidebar-bg = rgb("#edf4fa")
#let rule = rgb("#b8c9d8")

#let section(title) = [
  #v(0.72em)
  #text(fill: accent, weight: "bold", size: 11.2pt)[#title]
  #v(0.16em)
  #line(length: 100%, stroke: 0.55pt + rule)
  #v(0.35em)
]

#let smallsection(title) = [
  #v(0.68em)
  #text(fill: accent, weight: "bold", size: 9.8pt)[#title]
  #v(0.15em)
  #line(length: 100%, stroke: 0.45pt + rule)
  #v(0.28em)
]

#let entry(company, role, dates, location, body) = [
  #grid(
    columns: (1fr, auto),
    gutter: 0.75em,
    align: (left, right),
    [#text(weight: "bold")[#company - #role]],
    [#text(size: 8.2pt, fill: muted)[#dates]],
  )
  #text(size: 8.3pt, fill: muted)[#location]
  #v(0.18em)
  #body
  #v(0.34em)
]

#let sidebar-block(title, body) = [
  #smallsection(title)
  #body
]

#let contact-line(label, value) = [
  #text(weight: "bold")[#label] #value\
]

#let skill(label) = [
  #box(
    fill: white,
    radius: 4pt,
    inset: (x: 5pt, y: 3pt),
    stroke: 0.35pt + rule,
  )[#text(size: 8.3pt)[#label]]
]

#let skill-list(items) = [
  #grid(
    columns: (1fr,),
    row-gutter: 3.5pt,
    ..items.map(skill)
  )
]

#grid(
  columns: (1.95fr, 0.92fr),
  gutter: 1.15cm,
  [
    #v(0.15cm)
    #text(size: 24pt, weight: "bold", fill: accent)[Oscar Isberg]
    #v(0.08cm)
    #text(size: 12.2pt, fill: muted)[Software Developer]
    #v(0.28cm)
    #line(length: 100%, stroke: 0.8pt + accent)

    #section[Relevant Experience]

    #entry(
      [A.P. Møller, Maersk],
      [Software Engineer],
      [August 2023 - July 2024],
      [Göteborg, Sweden],
      [
        - Part of a team at Maersk focused on integrating customs applications within the logistics IT infrastructure.
        - Worked on a legacy .NET Framework 4.8 system and contributed to modern ASP.NET Core/.NET 8 APIs and microservices built with FastEndpoints.
        - Followed clean architecture principles and used event-based communication with Kafka for efficient system design.
        - Contributed to user stories, OpenAPI-based API documentation and testing, including unit, integration, functional and non-functional acceptance tests using BDD.
        - Participated in agile processes such as hosting daily scrums, sprint demos, and facilitating team collaboration.
      ]
    )

    #entry(
      [RS Software],
      [Software Developer, Internship],
      [January 2023 - April 2023],
      [Varberg, Sweden],
      [
        - Learned company techniques and tools including Azure DevOps, Docker, Kubernetes, and JavaScript.
        - Developed part of an Azure Functions app and implemented new customer-facing functionality.
        - Built an app with a backend in ASP.NET and extended an existing Next.js frontend, including a CI/CD pipeline in Azure DevOps hosted in a Kubernetes cluster.
      ]
    )

    #entry(
      [Digital Creation],
      [Software Developer, Internship],
      [August 2022 - November 2022],
      [Varberg, Sweden],
      [
        - Rewrote a booking platform from scratch, giving the customer a more user-friendly experience.
          - Gained knowledge in C\# / ASP.NET, JavaScript / Vue.js, relational databases with MSSQL and Entity Framework, and logging.
      ]
    )

    #section[Projects]

    #entry(
      [Mushroom Mood],
      [Personal Project],
      [2026 - Present],
      [Copenhagen, Denmark],
      [
        - Building a Next.js and TypeScript app that uses weather history to help users judge mushroom readiness in Sweden.
        - Designing the first product flow and shaping the app architecture with feature plans, decision logs, and UML diagrams.
        - Implementing API routes, UI flows, and domain logic for weather history and mushroom readiness.
        - Built an agent-assisted workflow for planning, implementation, review, and documentation.
        - Writing Jest tests for API, service, repository, model, and validation code to keep the early codebase stable.
      ]
    )

    #section[Other Relevant Experience]

    #entry(
      [Skistar Hemsedal],
      [Ski Instructor],
      [Winter seasons 2017/18 - 2021/22 & 2024/25],
      [Hemsedal, Norway],
      [
        - Taught group and private lessons to guests of all ages and nationalities, adapting teaching methods to different skill levels and learning styles.
        - Built strong communication and leadership skills by instructing, motivating, and managing groups in a dynamic environment while ensuring safety and an enjoyable learning experience.
        - Contributed to the development of ski instructors through one-on-one coaching and internal training clinics.
      ]
    )

    #v(0.46em)
    #text(fill: accent, weight: "bold", size: 11.2pt)[Education]
    #v(0.12em)
    #line(length: 100%, stroke: 0.55pt + rule)
    #v(0.22em)

    #entry(
      [IT-Högskolan],
      [.NET Development],
      [August 2021 - July 2023],
      [Stockholm, Sweden],
      [
        #set list(spacing: 0.18em)
        - Completed courses in C\#, advanced programming, database development, web development, agile development, customer understanding, and clean code.
        - Gained practical experience through two internships.
      ]
    )
  ],
  [
    #box(
      fill: sidebar-bg,
      radius: 8pt,
      inset: (x: 12pt, y: 12pt),
      width: 100%,
    )[
      #sidebar-block[Contact Information][
        #contact-line[Phone:][+45 93 98 66 02]
        #contact-line[Email:][oscar.f.isberg\@gmail.com]
        #contact-line[LinkedIn:][#box[linkedin.com/in/oscar-filip-isberg]]
        #contact-line[GitHub:][github.com/oscarfilip]
      ]

      #sidebar-block[Professional Profile][
        Software developer with hands-on experience in modern .NET development, TypeScript, React, and Next.js. I work across the full lifecycle, from planning and implementation to testing and delivery.

        I write clear code, document decisions, and enjoy turning early ideas into working products with a steady and practical approach.
      ]

      #sidebar-block[Technical Skills][
        #skill-list((
          [C\# (.NET 8, ASP.NET Core)],
          [TypeScript and JavaScript (Node.js, React, Next.js)],
          [PostgreSQL, SQL Server, Entity Framework],
          [Event-driven microservices using Apache Kafka],
          [Testing: Jest, xUnit],
          [API design, validation, OpenAPI/Swagger and domain logic],
          [Docker, Kubernetes],
          [CI/CD with GitHub Actions and Azure DevOps],
        ))
      ]

      #sidebar-block[Languages][
        #contact-line[Swedish:][Native]
        #contact-line[English:][Fluent]
        #text(weight: "bold")[Danish:] Fully understands spoken and written Danish; good spoken proficiency
      ]

      #sidebar-block[About Me][
        Last summer, I moved from Sweden into an apartment on Ægirsgade in Nørrebro, where I am enjoying the opportunities that come with living in a big city. For many seasons, I have worked as a ski instructor in Hemsedal and spent last autumn in Lofoten, Norway.

        I like staying active and enjoy reading in my free time - right now, I am reading #emph[The Life of the Mind] by Hannah Arendt. Now, I am looking to find a welcoming and challenging workplace where I can settle in, contribute, and continue to grow.
      ]
    ]
  ],
)
