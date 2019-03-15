#!/bin/bash
while true
do curl $(minikube -p istio ip):$(kubectl get svc customer -n tutorial -o 'jsonpath={.spec.ports[0].nodePort}')
sleep .5
done