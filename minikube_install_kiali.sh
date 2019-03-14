#!/bin/bash

# change these URLs to
# echo "https://$(minikube -p istio ip):$(kubectl get svc jaeger-query -n istio-system -o 'jsonpath={.spec.ports[0].nodePort}')"
# and
# echo "https://$(minikube -p istio ip):$(kubectl get svc grafana -n istio-system -o 'jsonpath={.spec.ports[0].nodePort}')"

export JAEGER_URL=https://$(minikube -p istio ip):$(kubectl get svc jaeger-query -n istio-system -o 'jsonpath={.spec.ports[0].nodePort}')
export GRAFANA_URL=https://$(minikube -p istio ip):$(kubectl get svc grafana -n istio-system -o 'jsonpath={.spec.ports[0].nodePort}')
export VERSION_LABEL="v0.15.0"
export IMAGE_VERSION="v0.15.0"
export KIALI_USERNAME="admin"
export KIALI_PASSPHRASE="admin"

bash <(curl -L http://git.io/getLatestKialiKubernetes)

# git clone -b ${VERSION_LABEL} https://github.com/kiali/kiali

# cd kiali/deploy/kubernetes
# ./deploy-kiali-to-kubernetes.sh

open https://$(minikube -p istio ip):$(kubectl get svc kiali -n istio-system -o 'jsonpath={.spec.ports[0].nodePort}')/kiali/console


