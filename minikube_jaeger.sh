#!/bin/bash

# kubectl -n istio-system port-forward $(kubectl get pod -n istio-system -l app=jaeger -o jsonpath='{.items[0].metadata.name}') 16686:16686

# open localhost:16686
# https://www.jaegertracing.io/docs/1.6/getting-started/

# OR

kubectl patch service/jaeger-query -p '{"spec":{"type":"NodePort"}}' -n istio-system

open http://$(minikube -p istio ip):$(kubectl get svc jaeger-query -n istio-system -o 'jsonpath={.spec.ports[0].nodePort}')