#!/bin/bash

echo
command1="curl -A Safari $(minikube ip):$(kubectl get svc customer -n tutorial -o 'jsonpath={.spec.ports[0].nodePort}')"
echo $command1
$command1
echo
command2="curl -A Firefox $(minikube ip):$(kubectl get svc customer -n tutorial -o 'jsonpath={.spec.ports[0].nodePort}')"
echo $command2
$command2
echo

