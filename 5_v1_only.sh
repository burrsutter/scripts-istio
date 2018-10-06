#!/bin/bash
command1="istioctl replace -f ../istio-tutorial/istiofiles/virtual-service-recommendation-v1.yml -n tutorial"
echo $command1
$command1

command2="kubectl describe virtualservice/recommendation"
echo $command2
$command2