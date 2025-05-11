````
# 🚀 Capstone Project: DevOps Lifecycle Implementation for Abode Software

## 🧩 Scenario
You have been hired as a **Sr. DevOps Engineer** at **Abode Software**, a product-based company looking to modernize and automate its software delivery pipeline. The engineering team wants a rapid and reliable implementation of the **DevOps Lifecycle** using industry-standard tools.

📦 **Product Repository**: [hshar/website](https://github.com/hshar/website.git)

---

## 🎯 Objectives

Implement a full DevOps lifecycle covering:

1. **Configuration Management**
   - Automatically install and configure required software on servers using **Ansible**.

2. **Version Control Workflow**
   - Adopt a **GitOps workflow**:
     - On commits to `develop` → trigger build and test jobs.
     - On commits to `master` → trigger build, test, and deploy-to-prod jobs.

3. **CI/CD Pipeline using Jenkins**
   - **Jenkins pipeline jobs**:
     - `Job1`: Build Docker image from app source.
     - `Job2`: Run application-level tests.
     - `Job3`: Deploy to production (only for `master` branch).

4. **Containerization**
   - Package the app using Docker.
   - Use base image: `hshar/webapp`
   - Serve code from `/var/www/html`

5. **Webhook Integration**
   - Automate pipeline triggers via GitHub webhooks.

---

## 🛠️ Tech Stack

| Category              | Tools & Technologies                |
|-----------------------|-------------------------------------|
| Configuration Mgmt    | Ansible                             |
| CI/CD                 | Jenkins                             |
| Containerization      | Docker                              |
| VCS & Workflow        | Git, GitHub                         |
| Webhook Automation    | GitHub Webhooks                     |
| App Base Image        | hshar/webapp                        |

---

## 📌 Outcome

A fully automated, branch-based DevOps pipeline that:
- Reduces manual intervention
- Streamlines build → test → deploy stages
- Demonstrates real-world CI/CD practices using open-source tooling

---

## 🔗 Repository Structure

```plaintext
Capstone_Project/
└── Project_1/
    ├── Arch.png                         # Architecture Diagram
    ├── Capstone_1.pdf                   # Contains project step screenshots
    ├── Dockerfile                       # Dockerfile to install Apache in Ubuntu
    ├── jenkins_script_job1.sh           # Jenkins script for Job 1 (Build)
    ├── jenkins_script_job2.sh           # Jenkins script for Job 2 (Test)
    ├── jenkins_script_job3.sh           # Jenkins script for Job 3 (Prod Deploy)
    ├── play.yml                         # Ansible playbook to execute master.sh and slave.sh
    ├── master.sh                        # Shell script to install Java and Jenkins on master node
    ├── slave.sh                         # Shell script to install Java and Docker on slave node
    └── README.md                        # Project overview
````

---

## ✅ Status

> ✅ Project completed and tested in a local CI/CD lab environment.

---
