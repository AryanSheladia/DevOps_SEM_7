# DevOps Lab — SEM VII

Lab work and assignments for the DevOps course (SIT Pune, Final Year 2026-27). Covers version control, CI/CD, containerization, orchestration, and infrastructure as code.

## Stack

- **Version Control:** Git, GitHub
- **Project Tracking:** Jira (Scrum)
- **CI/CD:** Jenkins (Freestyle + Declarative Pipelines)
- **Containers:** Docker, Docker Compose
- **Orchestration:** Kubernetes (Minikube)
- **IaC:** Terraform

## Repo structure

```text
.
├── Assignment - 1/    Git setup & basic workflow
├── Assignment - 2/    Git branching & merging
├── Assignment - 3/    Git collaboration & conflict resolution
├── Assignment - 4/    Jira project & issue tracking
├── Assignment - 5/    Jenkins setup & freestyle project
├── Assignment - 6/    Basic declarative pipeline
├── Assignment - 7/    Pipeline with parameters
├── Assignment - 8/    Dockerfile & image build (Flask app)
├── Assignment - 9/    Container management & networking
├── Assignment - 10/   Docker volumes & data persistence
├── Assignment - 11/   Docker Compose (Flask + Redis)
├── Assignment - 12/   Kubernetes Pod & Deployment
├── Assignment - 13/   Kubernetes Service & networking
├── Assignment - 14/   CI/CD: Jenkins pipeline building Docker image
├── Assignment - 15/   Terraform basics (local provider)
└── README.md
```

Each assignment folder contains the working code (Dockerfiles, app code, manifests, `.tf` files) used to complete that exercise. Screenshots and write-ups for submission are tracked separately per course requirements.

## Assignment summary

| #   | Assignment                                    | Key artifacts                                                    |
| --- | --------------------------------------------- | ---------------------------------------------------------------- |
| 01  | Git Setup & Basic Workflow                    | `README.md` init, first commit + push                            |
| 02  | Git Branching & Merging                       | `feature-update` branch, fast-forward merge                      |
| 03  | Git Collaboration & Conflict Resolution       | Simulated conflict on `README.md`, manual resolution             |
| 04  | Jira Project & Issue Tracking                 | Scrum project `HWA`, Story/Task/Bug issues                       |
| 05  | Jenkins Setup & Freestyle Project             | Jenkins on Docker, `Git-Practice-Build` job                      |
| 06  | Basic Declarative Pipeline                    | `Declarative-Pipeline-Demo`, checkout + shell stages             |
| 07  | Pipeline with Parameters                      | `GREETING_NAME` string parameter                                 |
| 08  | Dockerfile & Image Build                      | Flask "Hello, Docker!" app, `my-flask-app` image                 |
| 09  | Container Management & Networking             | `docker ps`, `inspect`, `stop`/`rm` lifecycle                    |
| 10  | Docker Volumes & Data Persistence             | Named volume `my-app-data`, persistent greeting log              |
| 11  | Docker Compose (Multi-Container)              | Flask + Redis, hit counter via `docker-compose.yml`              |
| 12  | Kubernetes Pod & Deployment                   | Minikube cluster, 2-replica Deployment                           |
| 13  | Kubernetes Service & Networking               | NodePort Service exposing the Flask Deployment                   |
| 14  | CI/CD: Jenkins Pipeline building Docker Image | Docker-in-Jenkins via mounted socket, `Build Docker Image` stage |
| 15  | Terraform Basics (IaC)                        | `local_file` resource, init/plan/apply/destroy                   |
