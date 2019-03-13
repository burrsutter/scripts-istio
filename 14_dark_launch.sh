#!/bin/bash

command1="istioctl create -f ../istio-tutorial/istiofiles/destination-rule-recommendation-v1-v2.yml -n tutorial"
echo $command1
$command1
echo

command2="istioctl create -f ../istio-tutorial/istiofiles/virtual-service-recommendation-v1-mirror-v2.yml -n tutorial"
echo $command2
$command2
echo

command3="stern recommendation -c recommendation"
echo $command3
$command3




