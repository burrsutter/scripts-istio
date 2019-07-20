#!/bin/bash
#while true
#do curl $(minikube --profile istio-mk ip):$(kubectl get svc customer -n tutorial -o 'jsonpath={.spec.ports[0].nodePort}')
#sleep .3
#done

INGRESS_PORT=$(kubectl -n istio-system get service istio-ingressgateway -o jsonpath='{.spec.ports[?(@.name=="http2")].nodePort}')

GATEWAY_URL=$(minikube -p istio-mk ip):$INGRESS_PORT

while true
do curl http://${GATEWAY_URL}/customer
sleep .3
done
