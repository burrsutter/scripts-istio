#!/bin/bash

curl -L https://github.com/istio/istio/releases/download/1.3.0/istio-1.3.0-osx.tar.gz | tar xz

cd istio-1.3.0

for i in install/kubernetes/helm/istio-init/files/crd*yaml; do kubectl apply -f $i; done

kubectl create -f install/kubernetes/istio-demo.yaml

# the following handled by the minikube_dashboards.sh script
# kubectl patch service/grafana -p '{"spec":{"type":"NodePort"}}' -n istio-system
# kubectl patch service/prometheus -p '{"spec":{"type":"NodePort"}}' -n istio-system
# kubectl patch service/tracing -p '{"spec":{"type":"NodePort"}}' -n istio-system
# kubectl patch service/kiali -p '{"spec":{"type":"NodePort"}}' -n istio-system
# kubectl patch service/istio-ingressgateway -p '{"spec":{"type":"NodePort"}}' -n istio-system
