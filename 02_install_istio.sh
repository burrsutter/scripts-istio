#!/bin/bash

# curl -L https://github.com/istio/istio/releases/download/1.0.5/istio-1.0.5-osx.tar.gz | tar xz

# curl -L https://github.com/istio/istio/releases/download/1.0.2/istio-1.0.2-osx.tar.gz | tar xz
# curl -L https://github.com/istio/istio/releases/download/1.0.2/istio-1.0.2-linux.tar.gz | tar xz

#cd istio-1.0.2

curl -L https://github.com/istio/istio/releases/download/1.1.1/istio-1.1.1-osx.tar.gz | tar xz

cd istio-1.1.1

kubectl apply -f install/kubernetes/helm/istio-init/files/crd-11.yaml

kubectl apply -f install/kubernetes/istio-demo.yaml