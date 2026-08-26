# Jimmy Huang's CV

- Email: [skyrocketqy81@gmail.com](mailto:skyrocketqy81@gmail.com)
- Location: Taipei, Taiwan
- Website: [adminx-ebon.vercel.app](https://adminx-ebon.vercel.app/)
- LinkedIn: [jimmy-huang-07aa4722a](https://linkedin.com/in/jimmy-huang-07aa4722a)
- GitHub: [skyrocket-qy](https://github.com/skyrocket-qy)
- Leetcode: [rivendinner](https://leetcode.com/u/rivendinner)


# Experience
## **Fortune Fantasy Global Tech .Ltd**, Backend Engineer

Taiwan

June 2025 – present



1 year 3 months

- Developing various modern slot games

- Administrator backend management



## **Fontech**, Senior Backend Engineer

Remote

Nov 2024 – May 2025



7 months

A real-time, high-throughput, multi-tenant SaaS alarm management service used by various U.S. corporations.

- Built from the ground up

- Spearheaded a team of 3 backend engineers, implementing robust library with clean architecture to improve team's 50% delivery velocity

- Architected critical system components focusing on horizontal scalability

- Integrated various AWS infrastructure (Cognito, EC2, KMS, RDS...etc) to reduce operational overhead

- Developed advanced SQL query optimizations that reduced complex query times from 60s to 0.1s



## **AMI**, BMC Firmware Engineer II

Taiwan

Oct 2024 – Mar 2025



6 months

- Independently operates in BMC

- Proficient in D-Bus usage

- Experienced and skilled in developing with Redfish APIs

- Implemented optimization library for REP architecture, saving up to 50% time and code to do parse and validate

- Resolved multiple defects across different level modules

- Proactively proposes solutions to work-related issues and shares them with teams

- Collaborate with India and US teams with English communication



## **Taihe Technology Co., Ltd.**, Backend Engineer

Taiwan

Mar 2024 – Sept 2024



7 months

- Implemented new features and maintained existing microservice projects using PHP and Go

- Developed new payment and management system using GoFrame and gRPC

- Quickly familiarized with customized ORM, project architecture, and memSQL

- Assisted juniors in resolving backend and frontend issues



## **CIeNET Technologies**, Software Engineer

On-site at Google's Camera System Team

Sept 2023 – Mar 2024



7 months

- Responsible for testing Pixel cameras, also developing scripts (Python, Shell) to increase automation test coverage from 85% to 95%

- Analyzed test data for potential root causes

- Maintaining the automated testing pipeline



## **Ubitus**, Backend Engineer

Taiwan

June 2021 – Aug 2023



2 years 3 months

- Development of programs based on microservices and cloud infrastructure (Kubernetes, AWS) using Go, Python, and Node.js.

- Deployment and scripting for setting up cloud services and various services using Docker, Ansible, and Helm.

- Development and maintenance of an existing in-game content management system using Node.js, Go, and Python.

- Establishing a real-time Twitter comment monitoring system for internal use using Python and Prometheus.

- Developing AI-related services and applications like stable-diffustion using Python.

- Built up log collectors and workflow mechanisms using Fluentd and Airflow.

- Writing unit tests, integration tests, and end-to-end tests using K6.



## **Chung Yuan Christian University**, Teaching Assistant

Taiwan

Sept 2021 – June 2022



10 months

- Object Oriented Programming TA

- Introduction to Data Science TA



# Education
## **Chung Yuan Christian University**, Applied Mathematics

**MS**


Sept 2020 – June 2022



## **Chang Jung Christian University**, Accounting and Information

**BS**


Sept 2015 – June 2019



# Projects
## **Alarm system**

Associated with Fontech

Nov 2024 – May 2025

The project built on well-known camera corp for alarm management.

- Built the backend infrastructure and db schema to fit business logic.

- Optimized the index creation to ensure low RTs, reducing them from 50s to 3s.

- Built a real-time alarm monitoring API using Go (Gin) and GORM, supporting complex alarm lifecycles and multi-tenant data isolation.

- Integrated AWS Cognito and custom JWT middleware to manage secure user authentication and role-based access control.

- Automated schema migrations and versioning across MySQL using Atlas and GORM.

- Architected a secure Webhook and API Key system to enable third-party integrations and automated reporting.

- Standardized API documentation with Swagger (swag) and implemented structured logging using Zerolog for rapid debugging.

- Containerized the application with Docker and automated deployment workflows using Makefiles and Shell scripts.



## **AuthZ**

July 2025 – Aug 2025

- Architected a real-time, Zanzibar-inspired ReBAC engine supporting complex, recursive permission schemas (RBAC/ABAC), achieving 10k+ RPS per service with sub-1ms median latency.

- Engineered a memory-first, sharded graph architecture that eliminated lock contention and facilitated efficient tree-based relationship exploration for authorization tuple operations.

- Optimized database performance by implementing Redis-backed Cuckoo Filters for probabilistic existence checks, preventing redundant writes and slashing expensive duplicate lookups.

- Built an event-driven state synchronization pipeline utilizing Kafka and Debezium (CDC) to stream tuple updates, ensuring real-time consistency across a distributed cluster.

- Integrated comprehensive observability with OpenTelemetry (OTel) for distributed tracing and metrics, streamlining troubleshooting in high-throughput production environments.



## **RAG**

July 2025 – Aug 2025

This project implements a RAG (Retrieval-Augmented Generation) system to accelerate software development tasks like architecture comprehension and debugging. It leverages a large language model (LLM) to understand and analyze a codebase.

- Used LangChain to generate vector embeddings from the source code.

- Stored embeddings in a PostgreSQL database using the PGVector extension for efficient similarity searches.

- A self-hosted Llama model serves as the core LLM for generation and reasoning.

- Retrieves relevant code snippets from the vector store and provides them as context to the LLM upon query.



## **The application of tree-based model for well interpretation strategy**

Associated with Chung Yuan Christian University

Jan 2022 – June 2023

- Engineered an automated data extraction pipeline using a web crawler to scrape Grandmaster-level replays, processing game screens every two seconds to create a continuous dataset of 3,309 matches.

- Developed a computer vision module utilizing Hough Circles and custom RGB frame filters to detect and extract dynamic in-game features.

- Scaled the image dataset for model training by applying extensive data augmentation techniques, including background splitting and randomization, to generate over 52,500 training samples.

- Trained and evaluated multiple machine learning models—including CNNs, XGBoost, Random Forest, and GradientBoost—using 8-fold cross-validation to classify game states.

- Designed an interpretable decision-tree-based recommendation engine that analyzed real-time feature importance, successfully identifying strategies that increased simulated win rates by 18% to 34%.



## **Vistrace**

Feb 2026 – present

- Engineered a high-performance ARPG engine in Godot, optimizing the WASM pipeline for sub-second web deployment.

- Architected an AI-driven Agentic Workflow utilizing 10+ specialized AI sub-agents to autonomously execute TDD logic, verify builds, and manage cross-module dependencies, reducing development cycles by 30%.

- Developed 12+ custom CLI tools and static analysis guardrails that eradicated circular dependencies and automated 80% of the game's content ingestion pipeline.

- Automated end-to-end testing and documentation by combining AI scenario generation with Godot-ai MCP, achieving 95%+ test coverage on core systems, cutting manual QA time by 60%, and maintaining 100% automated documentation accuracy.

- Integrated generative AI pipelines to accelerate asset creation, deploying 30+ production-ready UI and background assets and reducing deployment time from days to minutes.



# Licenses and Certifications
## **AWS Certified Solutions Architect – Associate**

Amazon Web Services (AWS)



## **Gemini certified student**

Google



# Skills
**Languages:** Go, Python, C, Js/Ts, Lua, Shell

**Infrastructure & Cloud:** AWS, Kubernetes, Docker, Helm, Ansible, CI/CD

**AI/ML & Data Science:** LLM, RAG, TensorFlow, CNN, Decision Trees, Web Crawling

**Monitoring & Observability:** OpenTelemetry, Prometheus, Grafana, Loki, Fluentd, K6

# Languages
## **Mandarin (Native)**



## **English (Professional working proficiency)**


