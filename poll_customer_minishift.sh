#!/bin/bash

INGRESS_PORT=$(kubectl -n istio-system get service istio-ingressgateway -o jsonpath='{.spec.ports[?(@.name=="http2")].nodePort}')

GATEWAY_URL=$(minishift --profile istio-ms ip):$INGRESS_PORT

IP=$(minishift --profile istio-ms ip)

while true
# do curl customer-tutorial.$(minishift ip).nip.io
# do curl customer-tutorial.192.168.99.100.nip.io
# do curl $GATEWAY_URL/customer
do curl istio-ingressgateway-istio-system.$IP.nip.io/customer
sleep .3
done