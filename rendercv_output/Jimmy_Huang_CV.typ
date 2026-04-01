// Import the rendercv function and all the refactored components
#import "@preview/rendercv:0.3.0": *

// Apply the rendercv template with custom configuration
#show: rendercv.with(
  name: "Jimmy Huang",
  title: "Jimmy Huang - CV",
  footer: context { [#emph[Jimmy Huang -- #str(here().page())\/#str(counter(page).final().first())]] },
  top-note: [ #emph[Last updated in Apr 2026] ],
  locale-catalog-language: "en",
  text-direction: ltr,
  page-size: "us-letter",
  page-top-margin: 0.7in,
  page-bottom-margin: 0.7in,
  page-left-margin: 0.7in,
  page-right-margin: 0.7in,
  page-show-footer: true,
  page-show-top-note: true,
  colors-body: rgb(0, 0, 0),
  colors-name: rgb(0, 79, 144),
  colors-headline: rgb(0, 79, 144),
  colors-connections: rgb(0, 79, 144),
  colors-section-titles: rgb(0, 79, 144),
  colors-links: rgb(0, 79, 144),
  colors-footer: rgb(128, 128, 128),
  colors-top-note: rgb(128, 128, 128),
  typography-line-spacing: 0.6em,
  typography-alignment: "justified",
  typography-date-and-location-column-alignment: right,
  typography-font-family-body: "Source Sans 3",
  typography-font-family-name: "Source Sans 3",
  typography-font-family-headline: "Source Sans 3",
  typography-font-family-connections: "Source Sans 3",
  typography-font-family-section-titles: "Source Sans 3",
  typography-font-size-body: 10pt,
  typography-font-size-name: 30pt,
  typography-font-size-headline: 10pt,
  typography-font-size-connections: 10pt,
  typography-font-size-section-titles: 1.4em,
  typography-small-caps-name: false,
  typography-small-caps-headline: false,
  typography-small-caps-connections: false,
  typography-small-caps-section-titles: false,
  typography-bold-name: true,
  typography-bold-headline: false,
  typography-bold-connections: false,
  typography-bold-section-titles: true,
  links-underline: false,
  links-show-external-link-icon: false,
  header-alignment: center,
  header-photo-width: 3.5cm,
  header-space-below-name: 0.7cm,
  header-space-below-headline: 0.7cm,
  header-space-below-connections: 0.7cm,
  header-connections-hyperlink: true,
  header-connections-show-icons: true,
  header-connections-display-urls-instead-of-usernames: false,
  header-connections-separator: "",
  header-connections-space-between-connections: 0.5cm,
  section-titles-type: "with_partial_line",
  section-titles-line-thickness: 0.5pt,
  section-titles-space-above: 0.5cm,
  section-titles-space-below: 0.3cm,
  sections-allow-page-break: true,
  sections-space-between-text-based-entries: 0.3em,
  sections-space-between-regular-entries: 1.2em,
  entries-date-and-location-width: 4.15cm,
  entries-side-space: 0.2cm,
  entries-space-between-columns: 0.1cm,
  entries-allow-page-break: false,
  entries-short-second-row: true,
  entries-degree-width: 1cm,
  entries-summary-space-left: 0cm,
  entries-summary-space-above: 0cm,
  entries-highlights-bullet:  "•" ,
  entries-highlights-nested-bullet:  "•" ,
  entries-highlights-space-left: 0.15cm,
  entries-highlights-space-above: 0cm,
  entries-highlights-space-between-items: 0cm,
  entries-highlights-space-between-bullet-and-text: 0.5em,
  date: datetime(
    year: 2026,
    month: 4,
    day: 2,
  ),
)


= Jimmy Huang

  #headline([Senior Backend Engineer & Cloud Architect])

#connections(
  [#connection-with-icon("location-dot")[Taipei, Taiwan]],
  [#link("mailto:skyrocketqy81@gmail.com", icon: false, if-underline: false, if-color: false)[#connection-with-icon("envelope")[skyrocketqy81\@gmail.com]]],
  [#link("https://adminx-ebon.vercel.app/", icon: false, if-underline: false, if-color: false)[#connection-with-icon("link")[adminx-ebon.vercel.app]]],
  [#link("https://linkedin.com/in/jimmy-huang-07aa4722a", icon: false, if-underline: false, if-color: false)[#connection-with-icon("linkedin")[jimmy-huang-07aa4722a]]],
  [#link("https://github.com/skyrocket-qy", icon: false, if-underline: false, if-color: false)[#connection-with-icon("github")[skyrocket-qy]]],
  [#link("https://leetcode.com/u/rivendinner", icon: false, if-underline: false, if-color: false)[#connection-with-icon("code")[rivendinner]]],
)


== Experience

#regular-entry(
  [
    #strong[Fortune Fantasy Global Tech .Ltd], Backend Engineer

    - Developing various modern slot games

    - Administrator backend management

    - Explore OpenClaw usage with business

  ],
  [
    Taiwan

    June 2025 – present

    

    11 months

  ],
)

#regular-entry(
  [
    #strong[Fontech], Senior Backend Engineer

    #summary[A real-time, high-throughput, multi-tenant SaaS alarm management service used by various U.S. corporations.]

    - Built from the ground up

    - Spearheaded a team of 3 backend engineers, implementing robust library with clean architecture to improve team's 50\% delivery velocity

    - Architected critical system components focusing on horizontal scalability

    - Integrated various AWS infrastructure (Cognito, EC2, KMS, RDS...etc) to reduce operational overhead

    - Developed advanced SQL query optimizations that reduced complex query times from 60s to 0.1s

  ],
  [
    Remote

    Nov 2024 – May 2025

    

    7 months

  ],
)

#regular-entry(
  [
    #strong[AMI], BMC Firmware Engineer II

    - Independently operates in BMC

    - Proficient in D-Bus usage

    - Experienced and skilled in developing with Redfish APIs

    - Implemented optimization library for REP architecture, saving up to 50\% time and code to do parse and validate

    - Resolved multiple defects across different level modules

    - Proactively proposes solutions to work-related issues and shares them with teams

    - Collaborate with India and US teams with English communication

  ],
  [
    Taiwan

    Oct 2024 – Mar 2025

    

    6 months

  ],
)

#regular-entry(
  [
    #strong[Taihe Technology Co., Ltd.], Backend Engineer

    - Implemented new features and maintained existing microservice projects using PHP and Go

    - Developed new payment and management system using GoFrame and gRPC

    - Quickly familiarized with customized ORM, project architecture, and memSQL

    - Assisted juniors in resolving backend and frontend issues

  ],
  [
    Taiwan

    Mar 2024 – Sept 2024

    

    7 months

  ],
)

#regular-entry(
  [
    #strong[CIeNET Technologies], Software Engineer

    - Responsible for testing Pixel cameras, also developing scripts (Python, Shell) to increase automation test coverage from 85\% to 95\%

    - Analyzed test data for potential root causes

    - Maintaining the automated testing pipeline

  ],
  [
    On-site at Google's Camera System Team

    Sept 2023 – Mar 2024

    

    7 months

  ],
)

#regular-entry(
  [
    #strong[Ubitus], Backend Engineer

    - Development of programs based on microservices and cloud infrastructure (Kubernetes, AWS) using Go, Python, and Node.js.

    - Deployment and scripting for setting up cloud services and various services using Docker, Ansible, and Helm.

    - Development and maintenance of an existing in-game content management system using Node.js, Go, and Python.

    - Establishing a real-time Twitter comment monitoring system for internal use using Python and Prometheus.

    - Developing AI-related services and applications like stable-diffustion using Python.

    - Built up log collectors and workflow mechanisms using Fluentd and Airflow.

    - Writing unit tests, integration tests, and end-to-end tests using K6.

  ],
  [
    Taiwan

    June 2021 – Aug 2023

    

    2 years 3 months

  ],
)

#regular-entry(
  [
    #strong[Chung Yuan Christian University], Teaching Assistant

    - Object Oriented Programming TA

    - Introduction to Data Science TA

  ],
  [
    Taiwan

    Sept 2021 – June 2022

    

    10 months

  ],
)

== Education

#education-entry(
  [
    #strong[Chung Yuan Christian University], Applied Mathematics

  ],
  [
    Sept 2020 – June 2022

  ],
  degree-column: [
    #strong[MS]
  ],
)

#education-entry(
  [
    #strong[Chang Jung Christian University], Accounting and Information

  ],
  [
    Sept 2015 – June 2019

  ],
  degree-column: [
    #strong[BS]
  ],
)

== Projects

#regular-entry(
  [
    #strong[Alarm system]

    #summary[The project built on well-known camera corp for alarm management.]

    - Built the backend infrastructure and db schema to fit business logic.

    - Optimized the index creation to ensure low RTs, reducing them from 50s to 3s.

    - Built a real-time alarm monitoring API using Go (Gin) and GORM, supporting complex alarm lifecycles and multi-tenant data isolation.

    - Integrated AWS Cognito and custom JWT middleware to manage secure user authentication and role-based access control.

    - Automated schema migrations and versioning across MySQL using Atlas and GORM.

    - Architected a secure Webhook and API Key system to enable third-party integrations and automated reporting.

    - Standardized API documentation with Swagger (swag) and implemented structured logging using Zerolog for rapid debugging.

    - Containerized the application with Docker and automated deployment workflows using Makefiles and Shell scripts.

  ],
  [
    Associated with Fontech

    Nov 2024 – present

  ],
)

#regular-entry(
  [
    #strong[AuthZ]

    - Architected a real-time, Zanzibar-inspired ReBAC engine supporting complex, recursive permission schemas (RBAC\/ABAC), achieving 10k+ RPS per service with sub-1ms median latency.

    - Engineered a memory-first, sharded graph architecture that eliminated lock contention and facilitated efficient tree-based relationship exploration for authorization tuple operations.

    - Optimized database performance by implementing Redis-backed Cuckoo Filters for probabilistic existence checks, preventing redundant writes and slashing expensive duplicate lookups.

    - Built an event-driven state synchronization pipeline utilizing Kafka and Debezium (CDC) to stream tuple updates, ensuring real-time consistency across a distributed cluster.

    - Integrated comprehensive observability with OpenTelemetry (OTel) for distributed tracing and metrics, streamlining troubleshooting in high-throughput production environments.

  ],
  [
    July 2025 – Aug 2025

  ],
)

#regular-entry(
  [
    #strong[RAG]

    #summary[This project implements a RAG (Retrieval-Augmented Generation) system to accelerate software development tasks like architecture comprehension and debugging. It leverages a large language model (LLM) to understand and analyze a codebase.]

    - Used LangChain to generate vector embeddings from the source code.

    - Stored embeddings in a PostgreSQL database using the PGVector extension for efficient similarity searches.

    - A self-hosted Llama model serves as the core LLM for generation and reasoning.

    - Retrieves relevant code snippets from the vector store and provides them as context to the LLM upon query.

  ],
  [
    July 2025 – Aug 2025

  ],
)

#regular-entry(
  [
    #strong[The application of tree-based model for well interpretation strategy]

    - Engineered an automated data extraction pipeline using a web crawler to scrape Grandmaster-level replays, processing game screens every two seconds to create a continuous dataset of 3,309 matches.

    - Developed a computer vision module utilizing Hough Circles and custom RGB frame filters to detect and extract dynamic in-game features.

    - Scaled the image dataset for model training by applying extensive data augmentation techniques, including background splitting and randomization, to generate over 52,500 training samples.

    - Trained and evaluated multiple machine learning models—including CNNs, XGBoost, Random Forest, and GradientBoost—using 8-fold cross-validation to classify game states.

    - Designed an interpretable decision-tree-based recommendation engine that analyzed real-time feature importance, successfully identifying strategies that increased simulated win rates by 18\% to 34\%.

  ],
  [
    Associated with Chung Yuan Christian University

    Jan 2022 – June 2023

  ],
)

#regular-entry(
  [
    #strong[Vistrace]

    - Engineered a high-performance ARPG engine in Rust\/Bevy with strict DOD and 100\% ECS compliance, optimizing the WASM pipeline for sub-second web deployment.

    - Architected an AI-driven Agentic Workflow utilizing 10+ specialized AI sub-agents to autonomously execute TDD logic, verify builds, and manage cross-module dependencies, reducing development cycles by 30\%.

    - Developed 12+ custom Rust CLI tools and static analysis guardrails that eradicated circular dependencies and automated 80\% of the game's content ingestion pipeline.

    - Automated end-to-end testing and documentation by combining AI scenario generation with Playwright\/Rust, achieving 95\%+ test coverage on core systems, cutting manual QA time by 60\%, and maintaining 100\% automated documentation accuracy.

    - Integrated generative AI pipelines to accelerate asset creation, deploying 30+ production-ready UI and background assets and reducing deployment time from days to minutes.

  ],
  [
  ],
)

== Licenses and Certifications

#regular-entry(
  [
    #strong[AWS Certified Solutions Architect – Associate]

  ],
  [
    Amazon Web Services (AWS)

  ],
)

#regular-entry(
  [
    #strong[Gemini certified student]

  ],
  [
    Google

  ],
)

== Skills

#strong[Languages:] Go, Python, C, Rust, JavaScript (Node.js\/React.js\/Next.js), Lua, Shell

#strong[Infrastructure & Cloud:] AWS, Kubernetes, Docker, Helm, Ansible, CI\/CD

#strong[AI\/ML & Data Science:] LLM, RAG, TensorFlow, CNN, Decision Trees, Web Crawling

#strong[Monitoring & Observability:] OpenTelemetry, Prometheus, Grafana, Loki, Fluentd, D-Bus, K6 (Testing)

#strong[Operating Systems & Tools:] Linux, Git, Makefile, D-Bus

== Languages

#regular-entry(
  [
    #strong[Mandarin (Native)]

  ],
  [
  ],
)

#regular-entry(
  [
    #strong[English (Intermediate)]

  ],
  [
  ],
)
