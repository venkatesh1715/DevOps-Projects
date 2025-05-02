# installing java and docker
sudo apt update
sudo apt install openjdk-17-jdk -y
sudo apt install docker.io -y

# start and enable Docker
sudo systemctl enable docker
sudo systemctl start docker