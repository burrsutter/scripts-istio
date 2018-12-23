#!/bin/bash

# kubectl -n istio-system port-forward $(kubectl -n istio-system get pod -l app=grafana -o jsonpath='{.items[0].metadata.name}') 3000:3000
# open localhost:3000

# OR

kubectl patch service/grafana -p '{"spec":{"type":"NodePort"}}' -n istio-system

# echo "open http://$(minikube ip):$(kubectl get svc grafana -n istio-system -o 'jsonpath={.spec.ports[0].nodePort}')"

open http://$(minikube ip):$(kubectl get svc grafana -n istio-system -o 'jsonpath={.spec.ports[0].nodePort}')
