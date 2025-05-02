sudo nano apache-deployment.yaml
kubectl apply -f apache-deployment.yaml

git clone https://github.com/hshar/website.git
ls

kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/controller-v1.9.1/deploy/static/provider/baremetal/deploy.yaml  #install an Ingress controller manually
kubectl get pods -n ingress-nginx

cd website
ls
sudo nano Dockerfile
docker build -t venkatesh1503/custom-website:v1 .
sudo docker build -t venkatesh1503/custom-website:v1 .
sudo nano Dockerfile
sudo docker build -t venkatesh1503/custom-website:v1 .
sudo docker login -u venkatesh1503
sudo docker push venkatesh1503/custom-website:v1
cd

sudo nano custom-deployment.yaml
kubectl apply -f custom-deployment.yaml

sudo nano ingress.yaml
kubectl apply -f ingress.yaml

kubectl get nodes
kubectl get pods
kubectl get deployment
kubecrl get ingress
kubectl get service -o wide
kubectl get svc -n ingress-nginx

kubectl delete deployment apache-deployment custom-deployment
kubectl delete services apache-service custom-service
kubectl delete ingress ventura-ingress

ls
sudo rm -f *.yaml
rm -rf website/