#!/bin/bash
while true
do curl $(minikube --profile istio-mk ip):$(kubectl get svc customer -n tutorial -o 'jsonpath={.spec.ports[0].nodePort}')
sleep .3
done