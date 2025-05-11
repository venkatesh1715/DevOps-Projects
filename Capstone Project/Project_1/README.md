---

```
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

```

Capstone Project/
└── Project\_1/
├── Arch.png                       # Architecture Diagram
├── Capstone_1.pdf                 # contains project steps screanshoots
├── Dockerfile                     # dockerfile to install apache in ubuntu
├── jenkins script for job1,2,3.sh # jenkins scripts for each jobs**
├── play.yml                       # ansible file to execute master.sh and slave.sh
├── master.sh                      # shell script to install java and jenkins in master machine
├── slave.sh                       # shell script to install java and docker in slave machine
└── README.md                      # project overview

```

---

## ✅ Status

> ✅ Project completed and tested in a local CI/CD lab environment.

---

```
#Capstone Projects
```
You have been Hired Sr. DevOps Engineer in Abode Software. They want to implement DevOpsLifecycle in their company. You have been asked to implement this lifecycle as fast as possible. Abode Software is a product-based company, their product is available on this GitHub link.

https://github.com/hshar/website.git

Following are the specifications of the lifecycle:
1. Install the necessary software on the machines using a configuration management tool.
2. Git Workflow has to be implemented
3.Code Build should automatically be triggered once commit is made to master branch or develop branch.
If commit is made to master branch, test and push to prod
If commit is made to develop branch, just test the product, do not push to prod
4.The Code should be containerized with the help of a Dockerfile. The Dockerfile should bebuilt every time there is a push to Git-Hub. Use the following pre-built container for your application:
hshar/webapp
The code should reside in '/var/www/html'
5.The above tasks should be defined in a Jenkins Pipeline, with the 
following jobs:
Job1 : build
Job2: test
Job3 : prod
```
