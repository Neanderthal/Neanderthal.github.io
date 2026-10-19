// Short CV — hand-crafted typst layout (source for short_cv_in_english.pdf)
// Compile: quarto typst compile cv/short_cv_source.typ cv/short_cv_in_english.pdf

#let accent = rgb("#1f4e79")
#let muted = rgb("#666666")

#set document(title: "Sergey Istomin — CV", author: "Sergey Istomin")
#set page(paper: "a4", margin: (x: 1.45cm, top: 0.85cm, bottom: 0.7cm), numbering: none)
#set text(font: "Roboto", size: 8.7pt, fill: rgb("#232323"))
#set par(justify: false, leading: 0.48em)
#show link: set text(fill: accent)

#let section(title) = {
  v(2.5pt)
  text(size: 10.5pt, weight: "bold", fill: accent)[#upper(title)]
  v(1.5pt)
  line(length: 100%, stroke: 0.6pt + accent.lighten(35%))
  v(2pt)
}

#let tech(t) = text(size: 8pt, style: "italic", fill: muted)[  #t]

#let job(company, role, dates, body) = {
  grid(columns: (1fr, auto), align: (left, right),
    [#text(weight: "bold", size: 10pt)[#company]  #text(fill: muted)[— #role]],
    [#text(fill: muted, size: 8.7pt)[#dates]],
  )
  v(1pt)
  body
  v(1.5pt)
}

#set list(marker: text(fill: accent)[•], indent: 3pt, spacing: 2pt, body-indent: 4pt)

// ---------------- Header ----------------
#text(size: 23pt, weight: "bold", fill: accent)[Sergey Istomin]
#v(-4pt)
#text(size: 11pt, fill: muted)[Senior Python Developer / Tech Lead]
#v(3pt)
#text(size: 9pt)[
  #link("mailto:sergey.istomin@gmail.com")[sergey.istomin\@gmail.com]
  #sym.space.en · #sym.space.en
  #link("https://t.me/sergey_istomin")[Telegram \@sergey_istomin]
  #sym.space.en · #sym.space.en
  #link("https://www.linkedin.com/in/sergeyistomin/")[linkedin.com/in/sergeyistomin]
]

// ---------------- Summary ----------------
#section[Summary]
Senior Python Developer and Tech Lead, 10+ years in backend, microservices and high-load systems. Strong in Python / Django / FastAPI, cloud (AWS, Azure) and LLM / RAG / ML infrastructure; led distributed teams and shipped production solutions.

// ---------------- Skills ----------------
#section[Skills]
#grid(columns: (auto, 1fr), row-gutter: 2.5pt, column-gutter: 10pt,
  text(weight: "bold")[Core], [Python, asyncio, REST, Pytest, unit & integration testing],
  text(weight: "bold")[Web / API], [Django, FastAPI, Flask, Django REST Framework],
  text(weight: "bold")[Data & messaging], [PostgreSQL, Redis, MongoDB, Elasticsearch, ClickHouse, Kafka, RabbitMQ, Celery],
  text(weight: "bold")[DevOps & Cloud], [Docker, Kubernetes, GitLab CI/CD, Linux, Git, AWS, Azure, Terraform],
  text(weight: "bold")[ML / LLM], [LLM, RAG, LangChain, LlamaIndex, PyTorch, Transformers],
  text(weight: "bold")[Languages], [English (Upper-Intermediate), Russian (Native)],
)

// ---------------- Experience ----------------
#section[Experience]

#job("Raiffeisen", "Senior Python Developer / ML Engineer", "Mar 2024 – Jun 2026")[
  - Took a part in the development of an internal corporate portal. #tech[Django, PostgreSQL, Celery, Kubernetes]
  - Built an LLM-based chatbot using a Retrieval-Augmented Generation (RAG) architecture. #tech[Python, LangChain, LlamaIndex, Transformers, PgVector]
  - Designed and implemented a CI/CD pipeline automating build, deployment and integration for the chatbot. #tech[GitLab CI/CD, Docker, Kubernetes]
  - Created backend services powering chatbot functionality and performance. #tech[FastAPI, PostgreSQL, Redis]
  - Developed a module for registering and managing network equipment: inventory, onboarding, config storage, automated device interaction over the network, and centralized management via a REST API. #tech[Python, Django, DRF, PostgreSQL, SNMP, SSH]
  - Built a framework for benchmarking LLM inference speed. #tech[PyTorch, Transformers]
]

#job("Positive Technologies", "Senior Python Developer", "Feb 2023 – Apr 2024")[
  - Participated in the Network Attack Discovery (NAD) service. #tech[Django, Celery, PostgreSQL, ElasticSearch]
  - Refactored legacy synchronous modules to asyncio, significantly improving throughput; implemented sync/async interop via message queues and integrated process-based scanning tools into the pipeline. #tech[Python, asyncio, multiprocessing]
  - Set up logging and metrics delivery (Carbon/Graphite/Grafana); reworked the OAuth-based auth system.
]

#job("Quantum Soft", "Senior Python Developer", "Jul 2021 – Sep 2022")[
  - Project for Korn Ferry — an ML-based recommendation system for candidate evaluation.
  - Built services exposing ML models via API on Microsoft Azure; owned cloud integrations and infrastructure-as-code. #tech[Azure, Service Bus, Event Grid, Terraform, FastAPI, asyncio, pydantic]
]

#job("EPAM Systems", "Senior Python Developer", "Apr 2019 – Jul 2021")[
  - Audigent (adtech): ML models and web scraping for web-page topic classification. #tech[Python, AWS, Scrapy]
  - Merck (pharma): data collection and preparation for ML pipelines on AWS Lambda. #tech[Python, Go, Docker]
  - Scenario-based load-testing infrastructure for a European content provider. #tech[Python, asyncio, Docker, Nomad, RabbitMQ]
]

#job("Bars Group", "Senior Python Developer / Team Lead", "Jan 2016 – Mar 2019")[
  - Led development of web systems for cloud accounting and HR management for public-sector organizations across multiple regions.
  - Managed a distributed team; established Agile practices, planning and code review. #tech[Python, Django, DRF, PostgreSQL]
]

// ---------------- Projects ----------------
#section[Selected Projects]

- *Dali* #text(fill: muted)[— on-prem RCA diagnostics for industry]: structured root-cause reports over RAG, data stays in the customer's network; assembly-line pilot. #tech[FastAPI, LiteLLM, PostgreSQL/pgvector]
- *Rubezh* #text(fill: muted)[— self-hostable LLM guardrail (RU/technical)]: blocks prompt injection and jailbreaks without flagging legitimate safety-manual terms. #tech[Python, FastAPI, LiteLLM]
- *Open source* #text(fill: muted)[—] Supportal (web-chat to Telegram relay), MCP servers (QEMU, unix-pass), a workstation CVE scanner.

// ---------------- Education ----------------
#section[Education]
#grid(columns: (1fr, auto), row-gutter: 2.5pt, align: (left, right),
  [*Master's degree* — Computer Science and Management in Technical Systems \ #text(fill: muted, size: 9pt)[St. Petersburg State University of Aerospace Instrumentation]], [#text(fill: muted, size: 9pt)[2016]],
  [*Bachelor's degree* (not finished) — Computer Science and Management in Technical Systems \ #text(fill: muted, size: 9pt)[Peter the Great St. Petersburg Polytechnic University]], [#text(fill: muted, size: 9pt)[2002]],
)
