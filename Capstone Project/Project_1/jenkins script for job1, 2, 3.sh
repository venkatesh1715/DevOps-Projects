Job1 script in jenkins
sudo docker rm -f $(sudo docker ps -aq)
sudo docker build /home/ubuntu/jenkins/workspace/job1 -t job1
sudo docker run -itd -p 81:80 --name=c1 job1
	
Job2 script in jenkins	
sudo docker rm -f $(sudo docker ps -aq)
sudo docker build /home/ubuntu/jenkins/workspace/job2 -t job2
sudo docker run -itd -p 85:80 --name=c2 job2
		  
Job3 script in jenkins		  
sudo docker rm -f $(sudo docker ps -aq)
sudo docker build . -t job3
sudo docker run -itd -p 88:80 --name=c3 job3