#set page(
	paper: "a4",
	margin: (x: 1.2cm, y: 1.1cm),
)

#set text(
	font: "Lato",
	size: 9.1pt,
	lang: "da",
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
		[#image("/assets/icons/" + icon, width: 0.8em)],
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

		#section[Relevant erfaring]

		#entry(
			[A.P. Møller, Maersk],
			[Software Engineer],
			[august 2023 - juli 2024],
			[Göteborg, Sverige],
			[
				- Arbejdede i et team med fokus på at integrere toldapplikationer i Maersks bredere logistik- og IT-infrastruktur.
				- Bidrog til både legacy .NET Framework 4.8-systemer og moderne ASP.NET Core/.NET 8 API'er og microservices bygget med FastEndpoints.
				- Arbejdede med API-validering, logging, OpenAPI-baseret dokumentation, integrationstest og eventbaseret kommunikation med Kafka.
				- Bidrog til user stories, unit tests, integrationstest, funktionelle tests og non-functional acceptance tests med BDD.
				- Deltog i agilt samarbejde med udviklere, product owners og andre stakeholders i et større teknisk miljø med høje krav til kvalitet.
			]
		)

		#entry(
			[RS Software],
			[Software Developer, praktik],
			[januar 2023 - april 2023],
			[Varberg, Sverige],
			[
				- Lærte virksomhedens teknikker og værktøjer, blandt andet Azure DevOps, Docker, Kubernetes og JavaScript.
				- Udviklede en del af en Azure Functions-app og implementerede ny kundevendt funktionalitet.
				- Byggede en app med backend i ASP.NET og udvidede en eksisterende Next.js-frontend med CI/CD i Azure DevOps, Docker og Kubernetes.
			]
		)

		#entry(
			[Digital Creation],
			[Software Developer, praktik],
			[august 2022 - november 2022],
			[Varberg, Sverige],
			[
				- Omskrev en bookingplatform fra bunden med fokus på en tydeligere og mere brugervenlig applikation.
				- Opbyggede praktisk erfaring med C\# / ASP.NET, JavaScript / Vue.js, relationelle databaser med MSSQL og Entity Framework samt logging.
			]
		)

		#section[Projekt]

		#entry(
			[Mushroom Mood],
			[Personligt projekt],
			[2026 - nu],
			[København, Danmark],
			[
				- Bygger en Next.js- og TypeScript-app, der kombinerer SMHI-vejrhistorik og artspecifikke sæsonsignaler for at vurdere, om et svampested er værd at tjekke.
				- Har implementeret et spot-check flow med valg af lokation og art, readiness label, score, confidence, seasonal state og forklarende data.
				- Bygger API routes, validering, datamodeller, domænelogik, ekstern datahåndtering og Jest-tests på tværs af service-, repository-, route-, model- og valideringslag.
				- Har lagt fundament for beta med Auth.js email sign-in, invite-only access control, Drizzle/PostgreSQL-persistens, feedback API og Vercel-deploy dokumentation.
				- Bruger AI-assisteret udvikling struktureret gennem planer, decision logs, reviews, tests og dokumentation for at gøre produktvalg og implementeringskvalitet sporbare.
			]
		)

		#v(0.02em)
		#text(fill: accent, weight: "bold", size: 11.2pt)[Uddannelse]
		#v(0.06em)
		#line(length: 100%, stroke: 0.55pt + rule)
		#v(0.08em)
		#entry(
			[IT-Högskolan],
			[.NET Development],
			[august 2021 - juli 2023],
			[Stockholm, Sverige],
			[
				- Kurser i C\#, avanceret programmering, databaseudvikling, webudvikling, agil udvikling, kundeforståelse og clean code.
				- Praktisk erfaring gennem to praktikforløb.
			]
		)

		#section[Anden erfaring]

		#entry(
			[Skistar Hemsedal],
			[Skiinstruktør],
			[vintersæsoner 2017/18 - 2021/22 & 2024/25],
			[Hemsedal, Norge],
			[
				- Underviste grupper og private gæster på tværs af alder, nationalitet og niveau.
				- Opbyggede stærke kommunikations- og lederevner gennem instruktion, motivation og ansvar for sikkerhed i et dynamisk miljø.
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
			#sidebar-block[Kontakt][
				#contact-list((
					contact-icon-line("location.svg", [København, Danmark]),
					contact-icon-line("phone.svg", [+45 93 98 66 02]),
					contact-icon-line("email.svg", [oscar.f.isberg\@gmail.com]),
					contact-icon-line("linkedin.svg", [linkedin.com/in/oscar-filip]),
					contact-icon-line("github.svg", [github.com/oscarfilip]),
				))
			]

			#sidebar-block[Kort introduktion][
				#set par(leading: 0.45em, spacing: 0.38em)
				Jeg søger rollen som AI Engineer / Fullstack Developer hos YouSee / TDC Brands, fordi den kombinerer praktisk fullstack- og backendudvikling med interne AI-produkter. Jeg bruger AI struktureret i min egen udviklingsproces til planlægning, testcases, review, dokumentation og tekniske beslutninger, og vil gerne udvikle mig videre inden for agentic AI, LLMs og interne AI-løsninger.
			]

			#sidebar-block[Professionel profil][
				#set par(leading: 0.45em, spacing: 0.38em)
				Software developer baseret i København med hands-on erfaring i moderne .NET-udvikling, TypeScript, React og Next.js. Jeg arbejder gerne på tværs af backend, frontend, API'er, test, dokumentation og levering.

				Min erfaring ligger især i API-baseret backendarbejde, validering, integrationstest, OpenAPI-dokumentation, eksterne dataflows og produktnære fullstack-fundamenter som authentication, persistens og deployment.
			]

			#sidebar-block[Tekniske kompetencer][
				#skill-list((
					[C\# (.NET 8, ASP.NET Core)],
					[TypeScript og JavaScript (Node.js, React, Next.js)],
					[PostgreSQL, SQL Server, Entity Framework, Drizzle ORM],
					[API-udvikling, validering, OpenAPI/Swagger og integrationstest],
					[Testing: Jest, xUnit og BDD],
					[Eksterne dataflows og eventbaserede microservices med Kafka],
					[Docker, Kubernetes, Azure DevOps, GitHub Actions og Vercel],
					[Struktureret AI-assisteret udvikling],
				))
			]

			#sidebar-block[Sprog][
				#set par(leading: 0.38em, spacing: 0.38em)
				#detail-list((
					language-line([Svensk:], [Modersmål]),
					language-line([Engelsk:], [Flydende]),
					language-line([Dansk:], [Forstår talt og skrevet dansk fuldt ud; god mundtlig kunnen]),
				))
			]

		]
	],
)