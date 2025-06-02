# 🛒 AWS Grocery App Deployment Guide using Terraform

Welcome! This repository contains the infrastructure deployment guide for **GroceryMate**, a cloud-native e-commerce platform for online grocery shopping.  
Built as part of the **Masterschool Data Science Bootcamp** — Cloud Engineering Track.

Our goal: **Fully automated AWS infrastructure deployment** using **Terraform** and **GitHub Actions**.

---

## 📚 Table of Contents
1. 🚀 [Introduction](#-introduction)
2. 🏗️ [Infrastructure Overview](#-infrastructure-overview)
3. 🧩 [Architecture & Diagrams](#-architecture--diagrams)
4. ⚙️ [Terraform Configuration](#-terraform-configuration)
5. 🏢 [Infrastructure Components](#-infrastructure-components)
    - 🔒 [Security Groups](#-security-groups)
    - ☁️ [Virtual Private Cloud (VPC)](#-virtual-private-cloud-vpc)
    - 🌐 [Application Load Balancer (ALB)](#-application-load-balancer-alb)
    - 🖥️ [Compute Infrastructure (EC2 & Auto Scaling Group)](#-compute-infrastructure-ec2--auto-scaling-group)
    - 📦 [Container Registry (ECR)](#-container-registry-ecr)
    - 🛢️ [Database (Amazon RDS - PostgreSQL)](#-database-amazon-rds---postgresql)
    - 🗄️ [Storage (S3 Bucket)](#-storage-s3-bucket)
    - 🛡️ [IAM Roles & Policies](#-iam-roles--policies)
    - 🔄 [Lambda Function & Step Functions](#-lambda-function--step-functions)
6. 🧮 [Variables](#-variables)
7. 🛠️ [Terraform Execution Flow](#-terraform-execution-flow)
8. 📝 [Notes](#-notes)
9. 🤝 [Contributing](#-contributing)
10. 📜 [License](#-license)

---

## 🚀 Introduction

**GroceryMate** is a cloud-native e-commerce app built for a seamless online grocery experience.
This project, developed as part of the **Cloud Track Engineering** in Masterschool’s **Data Science Bootcamp**, extends an original app by our mentor **Alejandro Román** — special thanks!

**The challenge:** deploy its AWS infrastructure, step-by-step.
**The solution:** full automation with Terraform and GitHub Actions — scalable, repeatable, and 100% hands-off.

This repository focuses on the AWS architecture, deployment pipeline, and automation.
For application features and local setup instructions, refer to the original README.md.

---

## 🏗️ Infrastructure Overview

This modularized Terraform configuration provisions the infrastructure for a grocery web application using AWS. 
The setup includes:
* An auto-scalable high-available Multi-AZ EC2 environment running Dockerized applications.
* A secure PostgreSQL database on RDS with Failover Replica in private subnets.
* A Multi_AZ Application Load Balancer for traffic distribution.
* An S3 bucket for storing user avatars and database dumps.

The infrastructure is designed for high availability, scalability, and security.


---

## 🧩 Architecture & Diagrams

> 📷 Add here your architecture diagram (VPC, subnets, services flow, etc.)

---

## ⚙️ Terraform Configuration

Infrastructure as Code (IaC) is implemented using **Terraform** for declarative, scalable deployments.  
GitHub Actions automate the CI/CD pipeline for infrastructure provisioning.

Here is the structure of the Terraform project:

![Terraform Project Structure](./terraform_structure.png)

---

## 🏢 Infrastructure Components

### 🔒 Security Groups
Configuration of security rules for EC2 instances, ALB, and RDS.

### ☁️ Virtual Private Cloud (VPC)
Network isolation with public and private subnets across multiple availability zones.

### 🌐 Application Load Balancer (ALB)
Traffic distribution across auto-scaled EC2 instances.

### 🖥️ Compute Infrastructure (EC2 & Auto Scaling Group)
Auto-scalable EC2 setup for high availability and resilience.

### 📦 Container Registry (ECR)
Docker container storage for application images.

### 🛢️ Database (Amazon RDS - PostgreSQL)
Managed relational database service for reliable data storage.

### 🗄️ Storage (S3 Bucket)
Static file hosting and backup storage.

### 🛡️ IAM Roles & Policies
Role-based access control to AWS resources with least-privilege permissions.

### 🔄 Lambda Function & Step Functions
Serverless functions for asynchronous workflows.

---

## 🧮 Variables

All configurations are parameterized using `variables.tf` for flexibility and environment-specific deployments.

---

## 🛠️ Terraform Execution Flow

1. Initialize Terraform: `terraform init`
2. Validate configuration: `terraform validate`
3. Plan deployment: `terraform plan`
4. Apply deployment: `terraform apply`

---

## 📝 Notes

- Ensure your AWS credentials are properly configured before running Terraform.
- The infrastructure follows the **well-architected framework** best practices.

## 🤝 Contributing

We welcome contributions! Please follow these steps:

1. Fork the repository.
2. Create a new feature branch (`feature/your-feature`).
3. Implement your changes and commit them.
4. Push your branch and create a pull request.

## 📜 License

This project is licensed under the MIT License.




