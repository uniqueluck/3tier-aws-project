# 🚀 Deploying a Highly Available 3-Tier Web Architecture on AWS with Terraform & Ansible

This project demonstrates how to deploy a highly available 3-tier architecture (Web, App, DB) on AWS using Terraform for provisioning and Ansible for configuration management.

Perfect for beginners learning AWS, Infrastructure as Code (IaC), and automation tools.


---
## 📸 Architecture

<p align="center">
  <img src="Screenshots/6_architecture_diagram.png" alt="Data Flow Diagram" width="900"/>
</p>

---

## 📖 Table of Contents
1. [Project Overview](#project-overview)
2. [Why This Project is Important](#why-this-project-is-important)
3. [What You Will Learn](#what-you-will-learn)
4. [Real-World Use Cases](#real-world-use-cases)
5. [Step-by-Step Implementation](#step-by-step-implementation)
6. [Screenshots Summary](#screenshots-summary)
7. [GitHub Repository](#github-repository)
8. [Conclusion](#conclusion)

---


## 📌 Project Overview
This beginner-friendly project shows how to deploy a **highly available 3-tier architecture** on AWS using **Terraform** and **Ansible**.


---

## 🎯 Why This Project is Important
- Learn **real-world AWS infrastructure design**
- Apply **Infrastructure as Code (IaC)** concepts
- Automate multi-tier app deployments

---

## 📚 What You Will Learn
✅ Provision AWS resources using Terraform modules  
✅ Configure servers with Ansible  
✅ Deploy and test a full 3-tier architecture

---

## 🌍 Real-World Use Cases
- Hosting scalable web applications
- Automating deployments in DevOps pipelines
- Multi-tier architecture deployments

---

## 🛠 Step-by-Step Implementation

### 🌐 Step 1: Launch EC2 for Terraform & Ansible
Login to AWS Console → Search for “EC2” → Launch instance → Amazon Linux 2 → t2.micro → Create key pair → Launch.

<p align="center">
  <img src="Screenshots/01-Launch-EC2.png" alt="Launch EC2" width="900"/>
</p>
📖 *EC2 instance launch configuration.*

---

### ⚙️ Step 2: Install Terraform & Ansible
SSH into EC2 and run:
Install Terraform and  Ansible:
```bash

# Update system
sudo yum update -y

# Install required tools
sudo yum install -y wget unzip

# Download Terraform binary
wget https://releases.hashicorp.com/terraform/1.6.0/terraform_1.6.0_linux_amd64.zip

# Unzip and move to path
unzip terraform_1.6.0_linux_amd64.zip
sudo mv terraform /usr/local/bin/

# Install Ansible
sudo amazon-linux-extras install ansible2 -y
ansible --version

```







---

### 📦 Step 3: Write Terraform Code
Folder structure:

<p align="center">
  <img src="Screenshots/ar.png" alt="Terraform Structure" width="900"/>
</p>
📖 *Terraform folder and files overview.*

---

### 🚀 Step 4: Apply Terraform to Provision Infrastructure
```bash
cd terraform-3tier-project
terraform init
terraform plan
terraform apply
```
<p align="center">
  <img src="terraform.png" alt="Terraform Apply" width="900"/>
</p>
📖 *Terraform provisioning AWS resources.*

---

### 📝 Step 5: Configure Servers with Ansible
Run:
```bash
cd ansible-3tier-setup
ansible-playbook -i inventory site.yml
```
<p align="center">
  <img src="Screenshots/terra.png" alt="Ansible Playbook" width="900"/>
</p>
📖 *Ansible playbook applying configurations.*

---

### ✅ Step 6: Verify Setup
- Visit the web app URL → Submit registration form
- Check RDS database for new entries
<p align="center">
  <img src="Screenshots/1_web_registration_form.png" alt="Web App" width="900"/>
</p>

<p align="center">
  <img src="Screenshots/2_form_submission_success.png" alt="Web App" width="900"/>
</p>
📖 *Web app registration form.*

<p align="center">
  <img src="Screenshots/3_rds_database_entr.png" alt="RDS Database" width="900"/>
</p>
📖 *Data entries visible in RDS database.*

---
---

## 🔗 GitHub Repository
All code files are available here: [GitHub Repo](https://github.com/uniqueluck/3tier-aws-project)

---

## 🎉 Conclusion
This documentation helps even beginners deploy a 3-tier AWS architecture using Terraform & Ansible with step-by-step guidance and screenshots.
✅ Feel free to fork this repo, raise issues, or submit PRs to improve it.
✅ Star ⭐ the repo if you found it helpful!
