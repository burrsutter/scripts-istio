#!/bin/bash


kubectl patch service/grafana -p '{"spec":{"type":"NodePort"}}' -n istio-system

open http://$(minikube ip):$(kubectl get svc grafana -n istio-system -o 'jsonpath={.spec.ports[0].nodePort}')


kubectl patch service/jaeger-query -p '{"spec":{"type":"NodePort"}}' -n istio-system

open http://$(minikube ip):$(kubectl get svc jaeger-query -n istio-system -o 'jsonpath={.spec.ports[0].nodePort}')


kubectl patch service/prometheus -p '{"spec":{"type":"NodePort"}}' -n istio-system

open http://$(minikube ip):$(kubectl get svc prometheus -n istio-system -o 'jsonpath={.spec.ports[0].nodePort}')


kubectl patch service/kiali -p '{"spec":{"type":"NodePort"}}' -n istio-system

open http://$(minikube ip):$(kubectl get svc kiali -n istio-system -o 'jsonpath={.spec.ports[0].nodePort}')/kiali
