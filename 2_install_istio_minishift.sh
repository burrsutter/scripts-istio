#!/bin/bash

oc login -u admin -p admin

curl -L https://github.com/istio/istio/releases/download/1.3.0/istio-1.3.0-osx.tar.gz | tar xz

cd istio-1.3.0

for i in install/kubernetes/helm/istio-init/files/crd*yaml; 
do oc apply -f $i; 
done

kubectl create -f install/kubernetes/istio-demo.yaml

oc expose svc grafana -n istio-system
oc expose svc prometheus -n istio-system
oc expose svc tracing -n istio-system
oc expose service kiali --path=/kiali -n istio-system
oc expose svc istio-ingressgateway -n istio-system --port=80
oc adm policy add-cluster-role-to-user admin system:serviceaccount:istio-system:kiali-service-account -z default