#!/bin/bash

kubectl delete -f ../../istio-tutorial/istiofiles/gateway-customer.yml
kubectl delete -n tutorial -f ../../istio-tutorial/istiofiles/destination-rule-tls.yml
kubectl delete -n tutorial -f ../../istio-tutorial/istiofiles/authentication-enable-tls.yml