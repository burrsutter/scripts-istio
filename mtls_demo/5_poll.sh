#!/bin/bash

INGRESS_PORT=$(kubectl -n istio-system get service istio-ingressgateway -o jsonpath='{.spec.ports[?(@.name=="http2")].nodePort}')

GATEWAY_URL=$(minikube -p istio ip):$INGRESS_PORT

while true
do curl http://${GATEWAY_URL}/
sleep .3
done

