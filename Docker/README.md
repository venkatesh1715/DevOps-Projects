## Assignment1

You have been asked to: 
    ● Pull ubuntu container 
    ● Run this container, and map port 80 on the local 
    ● Install apache2 on this container 
    ● Check if you are able to access the apache page on your browser

## Assignment2

You have been asked to: 
    ● Save the image created in Assignment 1 as a Docker image 
    ● Launch container from this new image and map the port to 81 
    ● Go inside the container and start the apache2 service 
    ● Check if you are able to access it on the browser

## Assignment3

You have been asked to: 
    ● Use the saved image in the previous assignment 
    ● Upload this image on Dockerhub 
    ● On a separate machine pull this dockerhub image, and launch it on port 80 
    ● Start the apache2 service 
    ● Verify if you are able to see the apache2 service

## Assignment4

You have been asked to: 

Create a dockerfile with the following specs: 
    ● Ubuntu container 
    ● Apache2 installed 
    ● Apache2 should automatically run once the container starts 

Submit the dockerfile, for assignment completion

## Assignment5

You have been asked to: 
    ● Create a sample HTML file 
    ● Use the Dockerfile from the previous task 
    ● Replace this sample HTML file inside the docker container with the default page

## CASE STUDY - CONTAINERIZATION USING DOCKER I

Problem Statement:
You work as a Devops Engineer in a leading Software Company. You have been asked to Dockerize the applications on the production server. The company uses custom software, therefore there is no pre-built container which can be used. 

Assume the following things: 
1) Assume the software to be installed is apache 
2) Use an Ubuntu container

The company wants the following things: 
1) Push a container to DockerHub with the above config 
2) The Developers will not be working with Docker, hence from their side you will just get the code. Write a Dockerfile which could put the code in the custom image that you have built.
