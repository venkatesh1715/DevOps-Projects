Commands:

In slave nodes:

sudo mkdir -p /mnt/data
sudo chmod 777 /mnt/data

In master node:

sudo nano pv.yaml
kubectl apply -f pv.yaml

sudo nano pvc.yaml
kubectl apply -f pvc.yaml

kubectl create secret generic xyz-secret --from-literal=password=xyzIsthebest
kubectl get secret xyz-secret -o yaml

kubectl get nodes

kubectl taint nodes ip-172-31-21-55 key=value:NoSchedule

sudo nano pod.yaml
kubectl apply -f pod.yaml
kubectl get pods -o wide
kubectl describe pod xyz-pod

kubectl exec -it xyz-pod -- cat /etc/secret/password
kubectl exec -it xyz-pod -- sh -c "echo hello > /data/hello.txt && cat /data/hello.txt"

kubectl delete PersistentVolume
kubectl delete PersistentVolume xyz-pv
kubectl delete PersistentVolumeClaikum xyz-pv
kubectl delete pod xyz-pod