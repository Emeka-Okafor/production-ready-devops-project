\# DevOps Engineer Practical Challenge



\## Project Overview



This project demonstrates a production-style DevOps workflow using Terraform, Jenkins, Docker, AWS EC2, and CloudWatch.



The solution provisions AWS infrastructure using Terraform, containerizes a Python Flask application using Docker, and automates deployment using Jenkins CI/CD pipelines.



\---



\# Architecture Overview



The deployment workflow follows this structure:



GitHub Repository

&#x20;       ↓

Jenkins CI/CD Pipeline

&#x20;       ↓

Docker Build \& Deployment

&#x20;       ↓

AWS EC2 Instance

&#x20;       ↓

Flask Application

&#x20;       ↓

CloudWatch Monitoring



\---



\# Project Structure



```bash

devops-project/

│

├── app/

│   ├── app.py

│   ├── Dockerfile

│   └── requirements.txt

│

├── jenkins/

│   └── Jenkinsfile

│

├── terraform/

│   ├── main.tf

│   ├── provider.tf

│   ├── terraform.tfvars

│   ├── variables.tf

│   │

│   └── modules/

│       ├── ec2/

│       ├── security\_group/

│       └── vpc/

│

├── .gitignore

└── README.md

```



\---



\# Technologies Used



\- Terraform

\- AWS EC2

\- AWS VPC

\- AWS Security Groups

\- Docker

\- Jenkins

\- Python Flask

\- AWS CloudWatch

\- GitHub



\---



\# Infrastructure as Code



Terraform was used to provision:



\- VPC

\- Public Subnet

\- Internet Gateway

\- Route Table

\- Security Group

\- EC2 Instance



The infrastructure was designed using reusable Terraform modules.



\---



\# Application



A simple Python Flask application was created and containerized using Docker.



The application exposes a web endpoint and is deployed automatically through Jenkins.



\---



\# CI/CD Pipeline



Jenkins was configured to automate:



1\. Docker image build

2\. Basic application testing

3\. Container deployment



Pipeline stages are defined inside:



```bash

jenkins/Jenkinsfile

```



\---



\# Monitoring \& Logging



AWS CloudWatch Agent was installed on the EC2 instance for basic monitoring and logging support.



\---



\# Deployment Steps



\## 1. Clone Repository



```bash

git clone <repository-url>

```



\---



\## 2. Navigate to Terraform Directory



```bash

cd terraform

```



\---



\## 3. Initialize Terraform



```bash

terraform init

```



\---



\## 4. Validate Terraform



```bash

terraform validate

```



\---



\## 5. Review Infrastructure Plan



```bash

terraform plan

```



\---



\## 6. Deploy Infrastructure



```bash

terraform apply

```



\---



\# Design Decisions



\- Terraform modules were used for maintainability and reusability.

\- Jenkins was selected for CI/CD automation.

\- Docker was used for consistent application deployment.

\- CloudWatch Agent was installed for monitoring support.

\- A public subnet was used for simplicity and demonstration purposes.



\---



\# Assumptions



\- AWS credentials are already configured.

\- Docker and Jenkins run on the same EC2 instance.

\- The deployment uses Amazon Linux AMI.



\---



\# Limitations \& Future Improvements



Possible future improvements include:



\- Using private subnets

\- Implementing load balancing

\- Using ECS or EKS instead of EC2

\- Restricting SSH/Jenkins access by IP

\- Integrating automated testing

\- Using remote Terraform state storage

\- Adding HTTPS with ACM and ALB



\---



\# Notes



The infrastructure and deployment pipeline were designed for automated deployment on AWS using Terraform, Jenkins, Docker, and CloudWatch.



Due to temporary AWS billing limitations during final validation, live deployment testing could not be fully completed. However, all infrastructure definitions, automation scripts, and CI/CD configurations are included and organized for reproducible deployment.



\---



\# Author



Project completed as part of a DevOps Engineer Practical Challenge assessment.

