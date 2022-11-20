# Setup kubectl on AWS 
EKS_CLUSTER_NAME=$(aws eks list-clusters --region us-west-2 --query clusters[0] --output text) # get cluster name
echo $EKS_CLUSTER_NAME # echo cluster name
aws eks update-kubeconfig --name $EKS_CLUSTER_NAME --region us-west-2  # updaet cluster and region
