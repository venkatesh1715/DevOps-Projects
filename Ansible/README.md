#Ansible Assignment - 1
```
You have been asked to: 
	● Setup Ansible cluster with 3 nodes 
	● On slave1 install java 
	● On slave 2 install mysql-server 
	
Do the above tasks using Ansible playbooks
```
#Ansible Assignment - 2
```
You have been asked to: 
	● Create a script which can add text “This text has been added by custom script” to 
/tmp.1.txt 
	● Run this script using Ansible on all the hosts
```
#Ansible Assignment - 3
```
You have been asked to:
	● Create 2 Ansible Roles
	● Install apache2 on slave1 using one role and nginx on slave2 using the other role
	
Above should be implemented using different Ansible Roles
```
#Ansible Assignment - 4
```
You have been asked to:
	● Use the previous deployment of ansible cluster
	● Configure the files folder in the role with index.html which should be replaced with the original index.html
	
All of the above should only happen on the slave which has nginx installed using the role
```
#Ansible Assignment - 5
```
You have been asked to: 
	● Create a new deployment of ansible cluster of 5 nodes 
	● Label 2 nodes as test and other 2 as prod 
	● Install java on test nodes 
	● Install mysql-server on prod nodes 

Use Anisble roles for the above, group the hosts under test and prod
```
#ANSIBLE CASE STUDY 
```
You are a Devops Engineer and the organization you are working on needs to set up two configuration management server groups. One for Apache another for Nginx. Being a Devops Engineer it is your task 
to deal with this configuration management issue. 

Let us see the tasks that you need to perform using Ansible. 
	1) Create two Server Groups. One for Apache and another for Nginx. 
	2) Push two html files with their server information. 

Make sure that you don’t forget to start the services once the installation is done. Also send post installation messages for both the server groups. 

Using Ansible Roles accomplish the above the tasks. 

Also, once the Apache server configuration is done you need to install Java on that server group using ansible role in a playbook.
```