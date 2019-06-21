#!/bin/bash

# INGRESS_PORT=$(kubectl -n istio-system get service istio-ingressgateway -o jsonpath='{.spec.ports[?(@.name=="http2")].nodePort}')

# GATEWAY_URL=$(minishift --profile istio-ms ip):$INGRESS_PORT

# while true
# do curl http://${GATEWAY_URL}/
#sleep .3
# done

IP=$(minishift --profile istio-ms ip)

while true
do curl istio-ingressgateway-istio-system.$IP.nip.io/customer
sleep .3
done

