#!/bin/bash

kubectl delete -n tutorial -f ../../istio-tutorial/istiofiles/destination-rule-tls.yml
kubectl delete -n tutorial -f ../../istio-tutorial/istiofiles/authentication-enable-tls.yml