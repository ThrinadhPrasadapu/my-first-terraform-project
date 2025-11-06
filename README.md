# 🚀 Terraform - Multiple EC2 Instances Deployment (AWS)

This project uses **Terraform** to automatically create multiple **EC2 instances** on AWS.  
It’s a beginner-friendly DevOps automation example showing Infrastructure as Code (IaC) in action.

---

## 🧰 Tech Stack
- **Terraform**
- **AWS EC2**
- **Ubuntu 22.04 LTS**
- **AWS CLI**

---

## 🧩 What This Project Does
- Creates **10 EC2 instances** in the AWS region **N. Virginia (`us-east-1`)**
- Automatically uploads your **local SSH public key** to AWS
- Outputs the **public IPs** of all created instances

---

## ⚙️ Prerequisites
Before running this project, make sure you have:

- [Terraform](https://developer.hashicorp.com/terraform/downloads) installed  
- [AWS CLI](https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html) installed and configured  
  ```bash
  aws configure

