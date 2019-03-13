#!/bin/bash

siege -r 2 -c 20 -v $(minikube -p istio ip):$(kubectl get svc customer -n tutorial -o 'jsonpath={.spec.ports[0].nodePort}')
