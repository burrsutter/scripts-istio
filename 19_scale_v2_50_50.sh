#!/bin/bash
command1="istioctl create -f ../istio-tutorial/istiofiles/destination-rule-recommendation-v1-v2.yml -n tutorial"
echo $command1
$command1

command2="istioctl create -f ../istio-tutorial/istiofiles/virtual-service-recommendation-v1_and_v2_50_50.yml -n tutorial" 
echo $command2
$command2

command3="kubectl scale --replicas=2 deployment/recommendation-v2"
echo $command3
$command3

echo "kubectl exec -it recommendation-v2-65b696556f-445zl /bin/bash"
echo "curl localhost:8080/misbehave"


