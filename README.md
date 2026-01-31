# CI/CD Kubernetes Pipeline (DevSecOps)

![CI/CD](https://img.shields.io/badge/CI%2FCD-GitHub%20Actions-blue)
![Security](https://img.shields.io/badge/Security-DevSecOps-green)
![Kubernetes](https://img.shields.io/badge/Kubernetes-EKS-blue)
![Cloud](https://img.shields.io/badge/Cloud-AWS-orange)
![IaC](https://img.shields.io/badge/IaC-Terraform-purple)

## Overview

This repository implements a **security-first CI/CD pipeline** that builds, scans, and deploys a containerised application to a Kubernetes environment provisioned in  
**[Repo 1](https://github.com/SadaC-hub/EC2-Runner_K8sProject)**.

The pipeline reflects the architecture and flow defined in the infrastructure repository and demonstrates a **production-aligned DevSecOps workflow**, where security, code quality, and deployment controls are enforced automatically before workloads are deployed to the cluster.

It is executed using **GitHub Actions** and deploys workloads to an **Amazon EKS** cluster, implementing **shift-left security**, automated quality gates, and runtime threat detection exactly as designed in the end-to-end system architecture.

---

## Why This Pipeline Matters

In Kubernetes-based environments, insecure code, vulnerable images, or misconfigured deployments can reach production if security is applied too late in the lifecycle.

This pipeline demonstrates how to:

- Prevent vulnerable builds from progressing to deployment
- Enforce automated security and quality checks in CI
- Maintain consistency between infrastructure and application delivery
- Detect suspicious behaviour at runtime once workloads are deployed

The design aligns directly with the architecture defined in Repo 1 and reflects real-world DevSecOps delivery practices.

---

## Pipeline Architecture

> High-level CI/CD and security flow, aligned with the system architecture defined in Repo 1:

1. Developer pushes code to the repository
2. GitHub Actions triggers the CI pipeline
3. Static code analysis and dependency checks are executed
4. Container image is built and scanned for vulnerabilities
5. Secure workloads are deployed to the Amazon EKS cluster
6. Runtime activity is monitored for anomalous behaviour

---

## Pipeline Stages

### 1. Source Control & Trigger
- Pipeline execution begins on code commits or pull requests
- Ensures every change is automatically validated through CI

### 2. Code Quality & Static Analysis
- **SonarQube** analyses source code for bugs, vulnerabilities, and code smells
- Prevents insecure or low-quality code from progressing further in the pipeline

### 3. Container Build & Vulnerability Scanning
- **Docker** is used to build reproducible application images
- **Trivy** scans:
  - File systems
  - Dependencies
  - Container images
- Builds fail if high or critical vulnerabilities are detected

### 4. Deployment to Kubernetes
- Secure container images are deployed to the Amazon EKS cluster
- The Kubernetes platform, networking, and baseline security controls are provisioned via Terraform in Repo 1
- Ensures alignment between infrastructure and application delivery

### 5. Runtime Threat Detection
- **Falco** monitors container and node activity at runtime
- Detects suspicious behaviours such as:
  - Privilege escalation
  - Unexpected process execution
  - Sensitive file access

---

## Security Controls Implemented

This pipeline applies **defence-in-depth** across the software delivery lifecycle:

- **Shift-Left Security**
  - Static analysis and vulnerability scanning during CI
- **Pre-Deployment Gating**
  - Builds fail when security or quality thresholds are breached
- **Runtime Detection**
  - Continuous monitoring after deployment using Falco
- **Infrastructure as Code**
  - Repeatable and auditable Kubernetes environments provisioned via Terraform

---

## Tools & Technologies

- **Infrastructure**: Terraform, AWS, Amazon EKS  
- **CI/CD**: GitHub Actions  
- **Security**: Trivy, Falco  
- **Code Quality**: SonarQube  
- **Containerisation**: Docker  
- **Orchestration**: Kubernetes  

---

## Skills Demonstrated

- Designing and implementing a **security-first CI/CD pipeline**
- Applying **shift-left DevSecOps** principles in Kubernetes environments
- Integrating **automated security and quality gates** into CI workflows
- Deploying and securing containerised workloads on **Amazon EKS**
- Implementing **runtime threat detection** for Kubernetes workloads
- Aligning application delivery with **Terraform-provisioned infrastructure**

---

## Relationship to Repo 1

This repository focuses on **secure application delivery and CI/CD automation**, while the infrastructure repository defines the underlying Kubernetes platform.

- **Repo 1** provisions the Amazon EKS cluster, networking, and baseline security controls
- **Repo 2** consumes that platform and enforces secure software delivery through CI/CD

Together, both repositories represent a complete, end-to-end **DevSecOps Kubernetes implementation**.

---

## Repository Summary (Repo 2)

This repository demonstrates a production-aligned CI/CD pipeline for Kubernetes workloads, integrating code quality checks, container vulnerability scanning, secure deployment practices, and runtime threat detection. It complements the infrastructure defined in Repo 1 and showcases how DevSecOps principles are applied across the full software delivery lifecycle.


