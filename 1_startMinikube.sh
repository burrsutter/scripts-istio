#!/bin/bash

minikube start -p istio-mk --memory=8192 --cpus=3 \
  --kubernetes-version=v1.17.4 \
  --vm-driver=virtualbox \
  --disk-size=30g 