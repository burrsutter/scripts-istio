#!/bin/bash

INGRESS_PORT=$(kubectl -n istio-system get service istio-ingressgateway -o jsonpath='{.spec.ports[?(@.name=="http2")].nodePort}')

GATEWAY_URL=$(minikube ip):$INGRESS_PORT

while true
do curl http://${GATEWAY_URL}/customer
sleep .3
done
