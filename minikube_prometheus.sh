#!/bin/bash

kubectl patch service/prometheus -p '{"spec":{"type":"NodePort"}}' -n istio-system

open http://$(minikube ip):$(kubectl get svc prometheus -n istio-system -o 'jsonpath={.spec.ports[0].nodePort}')

# kubectl -n istio-system port-forward $(kubectl -n istio-system get pod -l app=prometheus -o jsonpath='{.items[0].metadata.name}') 9090:9090

