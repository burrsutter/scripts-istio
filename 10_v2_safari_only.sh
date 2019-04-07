#!/bin/bash

command1="kubectl replace -f ../istio-tutorial/istiofiles/virtual-service-safari-recommendation-v2.yml -n tutorial"
echo $command1
$command1