kubectl apply -f k8s-namespace.yml # to create the cloudacademy namespace
kubectl config set-context --current --namespace cloudacademy # after running create namespace
kubectl apply -f k8s-mongo-stateful.yaml # to deploy the stateful AWS
kubectl get pods --watch # watch the pods as they are being setup 
kubectl get pods -l role=db # view the pods with a db tag
kubectl apply -f k8s-mongo-headless.yaml # create the headless mongo deployment
kubectl get svc # get the service that is created 

# examine the dns records produced by the headless service 
kubectl run --rm utils -it --image praqma/network-multitool -- bash # creating a temporary utils pod in the current namespace 
for i in {0..2}; do nslookup mongo-$i.mongo; done # within the new pod / execute the queries