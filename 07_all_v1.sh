#!/bin/bash
command1="kubectl apply -f ../istio-tutorial/istiofiles/destination-rule-recommendation-v1-v2.yml -n tutorial"
echo $command1
$command1

command2="kubectl apply -f ../istio-tutorial/istiofiles/virtual-service-recommendation-v1.yml -n tutorial" 
echo $command2
$command2
