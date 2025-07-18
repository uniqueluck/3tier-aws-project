# 🚀 Deploying a Highly Available 3-Tier Web Architecture on AWS with Terraform & Ansible

---

## 📖 Table of Contents
1. [Project Overview](#project-overview)
2. [Why This Project is Important](#why-this-project-is-important)
3. [What You Will Learn](#what-you-will-learn)
4. [Real-World Use Cases](#real-world-use-cases)
5. [Step-by-Step Implementation](#step-by-step-implementation)
   - [Step 1: Launch EC2 for Terraform & Ansible](#step-1-launch-ec2-for-terraform--ansible)
   - [Step 2: Install Terraform & Ansible](#step-2-install-terraform--ansible)
   - [Step 3: Write Terraform Code](#step-3-write-terraform-code)
   - [Step 4: Apply Terraform to Provision Infrastructure](#step-4-apply-terraform-to-provision-infrastructure)
   - [Step 5: Configure Servers with Ansible](#step-5-configure-servers-with-ansible)
   - [Step 6: Verify Setup](#step-6-verify-setup)
6. [Screenshots Summary](#screenshots-summary)
7. [GitHub Repository](#github-repository)
8. [Conclusion](#conclusion)

---

## 📌 Project Overview
This beginner-friendly project walks you through deploying a **highly available 3-tier architecture** on AWS using **Terraform** and **Ansible**. It automates networking, EC2 instances, and RDS setup.

📸 *Screenshot:* `screenshots/01-Launch-EC2.png`
📖 *Description:* Launching an EC2 instance from AWS Console.

---

## 🎯 Why This Project is Important
- Teaches **real-world AWS infrastructure design**
- Demonstrates **Infrastructure as Code (IaC)**
- Automates deployments for multi-tier apps

---

## 📚 What You Will Learn
✅ Deploy AWS VPC, Subnets, EC2, RDS  
✅ Modular Terraform code  
✅ Ansible for server configuration  
✅ End-to-end deployment automation

---

## 🌍 Real-World Use Cases
- Scalable web application hosting
- Multi-tier architecture deployments
- DevOps automation pipelines

---

## 🛠 Step-by-Step Implementation

### 🌐 Step 1: Launch EC2 for Terraform & Ansible
Go to AWS Console → Search **EC2** → Launch instance with Amazon Linux 2 → t2.micro → Create key pair → Launch.

📸 *Screenshot:* `screenshots/01-Launch-EC2.png`
📖 *Description:* EC2 instance launch configuration.

---

### ⚙️ Step 2: Install Terraform & Ansible
SSH into EC2 and run:
```bash
sudo yum update -y
sudo yum install -y wget unzip
# Install Terraform
wget https://releases.hashicorp.com/terraform/1.6.0/terraform_1.6.0_linux_amd64.zip
unzip terraform_1.6.0_linux_amd64.zip
sudo mv terraform /usr/local/bin/
# Install Ansible
sudo amazon-linux-extras install ansible2 -y
```

📸 *Screenshot:* `screenshots/02-Install-Terraform-Ansible.png`
📖 *Description:* Terraform & Ansible installation steps.

---

### 📦 Step 3: Write Terraform Code
Create folder structure:
```
terraform-3tier-project/
├── main.tf
├── variables.tf
├── outputs.tf
├── provider.tf
├── modules/
│   ├── vpc/
│   ├── ec2/
│   └── rds/
```
📸 *Screenshot:* `screenshots/03-Terraform-Structure.png`
📖 *Description:* Terraform folder and files overview.

💻 Code Files (examples):
- `main.tf`
- `variables.tf`
- `outputs.tf`
- `provider.tf`

---

### 🚀 Step 4: Apply Terraform to Provision Infrastructure
```bash
cd terraform-3tier-project
terraform init
terraform plan
terraform apply
```
📸 *Screenshot:* `screenshots/04-Terraform-Apply.png`
📖 *Description:* Terraform output showing created resources.

---

### 📝 Step 5: Configure Servers with Ansible
Run:
```bash
cd ansible-3tier-setup
ansible-playbook -i inventory site.yml
```
📸 *Screenshot:* `screenshots/05-Ansible-Playbook.png`
📖 *Description:* Ansible playbook applying configurations.

---

### ✅ Step 6: Verify Setup
1. Visit your web app URL → Submit form
2. Check RDS database for new entries.

📸 *Screenshot:* `screenshots/06-Web-App.png`
📖 *Description:* Registration form running on Nginx server.

📸 *Screenshot:* `screenshots/07-RDS-Entries.png`
📖 *Description:* Data stored in RDS database.

---

## 📸 Screenshots Summary
| Step                     | Screenshot                                  | Description                             |
|--------------------------|----------------------------------------------|-----------------------------------------|
| Launch EC2               | screenshots/01-Launch-EC2.png               | EC2 instance launch                     |
| Install Terraform/Ansible| screenshots/02-Install-Terraform-Ansible.png| Terraform & Ansible installation        |
| Terraform Files          | screenshots/03-Terraform-Structure.png      | Terraform folder structure              |
| Terraform Apply          | screenshots/04-Terraform-Apply.png          | Terraform apply result                  |
| Ansible Playbook         | screenshots/05-Ansible-Playbook.png         | Running Ansible playbook                |
| Web App                  | screenshots/06-Web-App.png                  | Web app registration form               |
| RDS Database             | screenshots/07-RDS-Entries.png              | Data entries in RDS                     |

---

## 🔗 GitHub Repository
All code files are available here: [GitHub Repo](https://github.com/uniqueluck/3tier-aws-project)

---

## 🎉 Conclusion
This documentation helps even beginners deploy a full 3-tier AWS architecture using Terraform & Ansible with clear steps and screenshots.
