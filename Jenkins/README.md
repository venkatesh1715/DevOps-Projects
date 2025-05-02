#Jenkins Assignment - 1
```
You have been asked to: 
	● Setup Ansible cluster with 3 nodes 
    ● Trigger a pipeline using Git when push on Develop branch 
    ● Pipeline should pull git content to a folder 
```
#Jenkins Assignment - 2
```
You have been asked to: 
    ● Add 2 nodes to Jenkins master 
    ● Create 2 jobs with the following jobs: 
      ○ Push to test 
      ○ Push to prod 
    ● Once a push is made to test branch copy git files to test server 
    ● Once a push is made to master branch copy git files to prod server 
```
#Jenkins Assignment - 3
```
You have been asked to:
    ● Create a pipeline in jenkins 
    ● Once push is made to “develop” branch in git, trigger job “test”. This will copy git files to test node 
    ● If test job is successful, then prod job should be triggered 
    ● Prod jobs should copy files to prod node
```
#Jenkins CASE STUDY - Integration of Devops tools with Jenkins 
```
You have been Hired as a Devops Engineer in xyz software company.They want to implement CI/CD pipeline intheir company.You have been asked to implement this life cycle as fast as possible. As this is a product-based company, their product is available on this GitHub link.
https://github.com/hshar/website.git
Following are the specifications of the Continuous integration:
1. Git Workflow has to be implemented
2. Code Build should automatically be triggered once commit is made to master branch or develop branch.If commit is made to master branch, build and publish website on port 82. If commit is made to develop branch, just build the product, do not publish.
3. Create a pipeline for the above tasks.
4. Create a container with Ubuntu and apache installed in it and use that container to build the code and the code should be on ‘/var/www/html’.
```