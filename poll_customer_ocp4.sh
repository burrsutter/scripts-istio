#!/bin/bash

URL=$(kubectl -n istio-system get routes -l app=istio-ingressgateway -o jsonpath='{.items[:1].spec.host}')
echo $URL

while true
do curl $URL/customer
sleep .3
done


