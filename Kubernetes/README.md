#Kubernetes Assignment - 1
```
You have been asked to: 
	● Deploy a Kubernetes Cluster for 3 nodes 
	● Create a nginx deployment of 3 replicas 
```
#Kubernetes Assignment - 2
```
You have been asked to: 
	● Use the previous deployment 
	● Create a service of type NodePort for nginx deployment 
	● Check the nodeport service on a browser to verify 
```
#Kubernetes Assignment - 3
```
You have been asked to: 
	● Use the previous deployment 
	● Change the replicas to 5 for the deployment
```
#Kubernetes Assignment - 4 
```
You have been asked to: 
	● Use the previous deployment 
	● Change the service type to ClusterIP
```
#Kubernetes Assignment - 5
```
You have been asked to: 
	● Use the previous deployment 
	● Deploy an nginx deployment of 3 replicas 
	● Create an nginx service of type clusterip 
	● Create an ingress service /apache to apache service /nginx to nginx service 
```
#Kubernetes  - Implementing Persistent Volumes, PVCs, and Secrets in Kubernetes
```
Problem Statement:
You work for the xyz organization. Your organization uses Kubernetes for container orchestration. Your organization has recently created pods from which data was being lost. Now 
they require volume mounts which preserve data and save a password called “xyzIsthebest” and this has to be put on a particular node of your choice.
 
You have been asked to:
	1) Create a persistent volume
	2) create a persistent volume claim
	3) create a secret “xyzIsthebest”
	4) Taint one of the nodes of the cluster
```
#CASE STUDY - A Kubernetes Test Deployment for Ventura Software
```
You have just joined a startup Ventura Software as a Devops Lead Engineer. The company relies on a Monolithic Architecture for its product. Recently, the senior management was hired. 
The new CTO insists on having a Microservice Architecture. The Development Team, is working on breaking the Monolith. Meanwhile, you have been asked to host a Test Application 
on Kubernetes, to understand how it works. 

Following things have to be implemented: 
	1) Deploy an Apache2 deployment of 2 replicas 
	2) Sample code has been checked-in at the following Git-Hub repo: https://github.com/hshar/website.git. 

You have to containerize this code, and push it to Docker Hub. Once done, deploy it on Kubernetes with 2 replicas 
	3) Deploy Ingress with the following rules: 
		i) */apache* should point to the apache pods
       ii) */custom* should point to the GitHub application
```