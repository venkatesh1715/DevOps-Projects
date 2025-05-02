kubectl apply -f assignment5.yaml
kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/controller-v1.9.1/deploy/static/provider/baremetal/deploy.yaml  #install an Ingress controller manually
kubectl get pods -n ingress-nginx
kubectl get pods
kubectl get ingress
kubectl get nodes -o wide
kubectl get svc -n ingress-nginx
# access the services using your node’s IP -> http://<node-ip>:port/nginx & http://<node-ip>:port/apache

kubectl delete service apache-service
kubectl delete service nginx-service
kubectl delete ingress web-ingress
sudo rm assignment5.yaml