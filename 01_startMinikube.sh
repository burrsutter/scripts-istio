#!/bin/bash

minikube start -p istio --memory=8192 --cpus=3 \
  --kubernetes-version=v1.12.0 \
  --vm-driver=virtualbox \
  --disk-size=30g \