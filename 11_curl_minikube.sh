#!/bin/bash

INGRESS_PORT=$(kubectl -n istio-system get service istio-ingressgateway -o jsonpath='{.spec.ports[?(@.name=="http2")].nodePort}')

GATEWAY_URL=$(minikube -p istio-mk ip):$INGRESS_PORT

echo
command1="curl -A Safari $GATEWAY_URL/customer"
echo $command1
$command1
echo
command2="curl -A Firefox $GATEWAY_URL/customer"
echo $command2
$command2
echo

