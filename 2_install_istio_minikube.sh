#!/bin/bash

curl -L https://github.com/istio/istio/releases/download/1.1.9/istio-1.1.9-osx.tar.gz | tar xz

cd istio-1.1.9

kubectl create -f install/kubernetes/helm/istio-init/files/crd-11.yaml

kubectl create -f install/kubernetes/istio-demo.yaml

kubectl patch service/grafana -p '{"spec":{"type":"NodePort"}}' -n istio-system
kubectl patch service/prometheus -p '{"spec":{"type":"NodePort"}}' -n istio-system
kubectl patch service/tracing -p '{"spec":{"type":"NodePort"}}' -n istio-system
kubectl patch service/kiali -p '{"spec":{"type":"NodePort"}}' -n istio-system
kubectl patch service/istio-ingressgateway -p '{"spec":{"type":"NodePort"}}' -n istio-system
