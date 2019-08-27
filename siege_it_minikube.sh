#!/bin/bash

INGRESS_PORT=$(kubectl -n istio-system get service istio-ingressgateway -o jsonpath='{.spec.ports[?(@.name=="http2")].nodePort}')

GATEWAY_URL=$(minikube -p istio-mk ip):$INGRESS_PORT

siege -r 2 -c 20 -v $GATEWAY_URL/customer

# siege -r 40 -c 1 -v $GATEWAY_URL/customer
