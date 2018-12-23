#!/bin/bash

kubectl apply -f <(istioctl kube-inject -f ../istio-tutorial/recommendation/kubernetes/Deployment-v2.yml) -n tutorial