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

#connections(
  [#connection-with-icon("location-dot")[Taipei, Taiwan]],
  [#link("mailto:skyrocketqy81@gmail.com", icon: false, if-underline: false, if-color: false)[#connection-with-icon("envelope")[skyrocketqy81\@gmail.com]]],
  [#link("https://rendercv.com/", icon: false, if-underline: false, if-color: false)[#connection-with-icon("link")[rendercv.com]]],
  [#link("https://linkedin.com/in/rendercv", icon: false, if-underline: false, if-color: false)[#connection-with-icon("linkedin")[rendercv]]],
  [#link("https://github.com/rendercv", icon: false, if-underline: false, if-color: false)[#connection-with-icon("github")[rendercv]]],
)


== Welcome to RenderCV

RenderCV reads a CV written in a YAML file, and generates a PDF with professional typography.

Each section title is arbitrary.

You can choose any of the 9 entry types for each section.

Markdown syntax is supported everywhere. This is #strong[bold], #emph[italic], and #link("https://example.com")[link].

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

== Experience

#regular-entry(
  [
    #strong[Fortune Fantasy Global Tech .Ltd], Backend Engineer

    - Develop various modern slot games

    - Administrator backend management

    - Explore OpenClaw usage with business

  ],
  [
    On-site

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
    Hybrid

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

== Projects

#regular-entry(
  [
    #strong[#link("https://github.com/")[FlashInfer]]

    #summary[Open-source library for high-performance LLM inference kernels]

    - Achieved 2.8x speedup over baseline attention implementations on A100 GPUs

    - Adopted by 3 major AI labs, 8,500+ GitHub stars, 200+ contributors

  ],
  [
    Jan 2023 – present

  ],
)

== Skills

#strong[Languages:] Python, C++, CUDA, Rust, Julia

#strong[ML Frameworks:] PyTorch, JAX, TensorFlow, Triton, ONNX

#strong[Infrastructure:] Kubernetes, Ray, distributed training, AWS, GCP

#strong[Research Areas:] Neural architecture search, model compression, efficient inference, multi-agent RL
