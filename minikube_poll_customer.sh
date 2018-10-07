#!/bin/bash
while true
do curl $(minikube ip):$(kubectl get svc customer -n tutorial -o 'jsonpath={.spec.ports[0].nodePort}')
sleep .3
done