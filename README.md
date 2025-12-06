# CI/CD Kubernetes Pipeline

This repository (Repo 2) implements the CI/CD pipeline that builds, scans, and deploys a secure containerised application onto the Kubernetes environment provisioned in Repo 1. It demonstrates a full DevSecOps workflow, integrating security scanning, code quality checks, container image validation, and runtime threat detection. The pipeline is executed using GitHub Actions and deploys workloads to an Amazon EKS cluster, showcasing a modern, automated, and security-focused software delivery process.

## Overview

The pipeline includes:

- **Terraform**: Automates the provisioning of an Amazon EKS cluster for Kubernetes workloads.
- **Trivy**: Ensures security by scanning file systems and container images for vulnerabilities.
- **SonarQube**: Performs static code analysis to detect bugs, vulnerabilities, and code smells.
- **Docker**: Builds and hosts containerised applications for deployment.
- **Kubernetes**: Manages and deploys containerised workloads efficiently.
- **Falco**: Monitors runtime behaviour to detect anomalies and potential security threats in Kubernetes clusters.

## Highlights

- **Infrastructure as Code**:  
  - Uses Terraform to provision an Amazon EKS cluster, ensuring consistent and repeatable infrastructure deployment.

- **Security-First Approach**:  
  - Vulnerability scanning with Trivy integrated at multiple stages of the pipeline.  
  - Runtime security monitoring with Falco to detect unauthorised or suspicious activity in the cluster.

- **Code Quality Assurance**:  
  - Ensures clean, maintainable, and reliable code using SonarQube.

- **Seamless Containerisation**:  
  - Leverages Docker for consistent and reproducible application builds.

- **Kubernetes Integration**:  
  - Deploys scalable, containerised applications using Kubernetes manifests.

## Tools and Technologies

- **Infrastructure**: Terraform, Amazon EKS, AWS  
- **CI/CD**: GitHub Actions, Jenkins, or similar tools (configurable)  
- **Security**: Trivy, Falco  
- **Code Quality**: SonarQube  
- **Containerisation**: Docker  
- **Orchestration**: Kubernetes

## Use Cases

This pipeline is ideal for:

- Automating infrastructure provisioning and application deployment in cloud-native environments.
- Enhancing security and code quality in the software development lifecycle.
- Monitoring runtime behaviour for threats and anomalies in Kubernetes clusters.
- Demonstrating DevOps expertise in CI/CD pipeline design, infrastructure automation, and runtime security.
