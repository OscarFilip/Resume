#set page(
  paper: "a4",
  margin: (x: 1.2cm, y: 1.1cm),
)

#set text(
  font: "Lato",
  size: 9.1pt,
  lang: "en",
)

#set par(
  leading: 0.35em,
  spacing: 0.43em,
)

#set list(
  indent: 0.95em,
  body-indent: 0.45em,
  spacing: 0.6em,
)

#let accent = rgb("#1f5d8f")
#let muted = rgb("#5e6a73")
#let sidebar-bg = rgb("#edf4fa")
#let rule = rgb("#b8c9d8")

#let section(title) = [
  #v(0.4em)
  #text(fill: accent, weight: "bold", size: 11.2pt)[#title]
  #v(0.08em)
  #line(length: 100%, stroke: 0.55pt + rule)
  #v(0.16em)
]

#let smallsection(title) = [
  #v(0.58em)
  #text(fill: accent, weight: "bold", size: 9.8pt)[#title]
  #v(0.11em)
  #line(length: 100%, stroke: 0.45pt + rule)
  #v(0.24em)
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
  #v(0.16em)
  #body
  #v(0.28em)
]

#let sidebar-block(title, body) = [
  #smallsection(title)
  #body
]

#let contact-line(label, value) = [
  #text(weight: "bold")[#label] #value\
]

#let contact-icon-line(icon, value) = [
  #grid(
    columns: (auto, 1fr),
    gutter: 0.35em,
    align: (left, left),
    [#image("assets/icons/" + icon, width: 0.8em)],
    [#value],
  )
]

#let contact-list(items) = [
  #grid(
    columns: (1fr,),
    row-gutter: 6pt,
    ..items,
  )
]

#let detail-list(items, gap: 0.6em) = [
  #grid(
    columns: (1fr,),
    row-gutter: gap,
    ..items,
  )
]

#let language-line(label, value) = [
  #text(weight: "bold")[#label] #value
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
  gutter: 1.05cm,
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
          - Worked in a team focused on integrating customs applications into Maersk's wider logistics IT infrastructure.
          - Contributed to legacy .NET Framework 4.8 systems and modern ASP.NET Core/.NET 8 APIs and microservices built with FastEndpoints.
          - Worked with API validation, logging, OpenAPI-based documentation, integration testing and event-based communication using Kafka.
          - Contributed to user stories, unit tests, integration tests, functional tests and non-functional acceptance tests using BDD.
          - Participated in agile work, sprint demos and collaboration with developers, product owners and other stakeholders.
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
        - Building a Next.js and TypeScript app that combines SMHI weather history and species-specific seasonal signals to help users judge whether a mushroom spot is worth checking.
        - Implemented a working spot-check flow with location and species selection, readiness label, score, confidence, seasonal state, and explanation data.
        - Built API routes, validation, data models, domain logic, external data handling, and Jest tests across service, repository, route, model, and validation code.
        - Added beta-oriented foundations including Auth.js email sign-in, invite-only access control, Drizzle/PostgreSQL persistence, a feedback API foundation, and Vercel deployment documentation.
        - Use an AI-assisted development workflow with plans, decision logs, reviews, tests, and documentation to keep product decisions traceable.
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

    #v(0.02em)
    #text(fill: accent, weight: "bold", size: 11.2pt)[Education]
    #v(0.06em)
    #line(length: 100%, stroke: 0.55pt + rule)
    #v(0.08em)

    #entry(
      [IT-Högskolan],
      [.NET Development],
      [August 2021 - July 2023],
      [Stockholm, Sweden],
      [
        - Completed courses in C\#, advanced programming, database development, web development, agile development, customer understanding, and clean code.
        - Gained practical experience through two internships.
      ]
    )
  ],
  [
    #box(
      fill: sidebar-bg,
      radius: 8pt,
      inset: (x: 12pt, top: 4pt, bottom: 18pt),
      width: 100%,
    )[
      #sidebar-block[Contact Information][
        #contact-list((
          contact-icon-line("location.svg", [Copenhagen, Denmark]),
          contact-icon-line("phone.svg", [+45 93 98 66 02]),
          contact-icon-line("email.svg", [oscar.f.isberg\@gmail.com]),
          contact-icon-line("linkedin.svg", [linkedin.com/in/oscar-filip]),
          contact-icon-line("github.svg", [github.com/oscarfilip]),
        ))
      ]

      #sidebar-block[Professional Profile][
        #set par(leading: 0.45em, spacing: 0.38em)
        Copenhagen-based software developer with hands-on experience in modern .NET development, TypeScript, React, and Next.js. I work across the full lifecycle, from planning and implementation to testing, deployment, and iteration.

        I have practical experience with API-based backend work, validation, integration testing, OpenAPI-based documentation, external data flows, and product-oriented foundations such as authentication, persistence, and deployment.

        I write clear code, document decisions, and enjoy turning early ideas into working products with a steady and practical approach.
      ]

      #sidebar-block[Technical Skills][
        #skill-list((
          [C\# (.NET 8, ASP.NET Core)],
          [TypeScript and JavaScript (Node.js, React, Next.js)],
          [PostgreSQL, SQL Server, Entity Framework, Drizzle ORM],
          [Event-driven microservices using Apache Kafka],
          [Testing: Jest, xUnit],
          [API development, validation, OpenAPI/Swagger, integration testing and domain logic],
          [Docker, Kubernetes],
          [CI/CD and deployment with GitHub Actions, Azure DevOps, and Vercel],
        ))
      ]

      #sidebar-block[Languages][
        #set par(leading: 0.38em, spacing: 0.38em)
        #detail-list((
          language-line([Swedish:], [Native]),
          language-line([English:], [Fluent]),
          language-line([Danish:], [Fully understands spoken and written Danish; good spoken proficiency]),
        ))
      ]

      #sidebar-block[About Me][
        #set par(leading: 0.45em, spacing: 0.38em)
        Originally from Sweden and now based in Nørrebro, Copenhagen, I enjoy staying active and learning new things.

        After several seasons as a ski instructor in Hemsedal and time spent in Lofoten, I am looking for a welcoming workplace where I can contribute and keep growing.
      ]
    ]
  ],
)
