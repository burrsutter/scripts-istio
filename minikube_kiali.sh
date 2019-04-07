#!/bin/bash

export GRAFANA_URL=https://$(minikube -p istio ip):$(kubectl get svc grafana -n istio-system -o 'jsonpath={.spec.ports[0].nodePort}')


kubectl patch service/kiali -p '{"spec":{"type":"NodePort"}}' -n istio-system

open http://$(minikube -p istio ip):$(kubectl get svc kiali -n istio-system -o 'jsonpath={.spec.ports[0].nodePort}')/kiali
