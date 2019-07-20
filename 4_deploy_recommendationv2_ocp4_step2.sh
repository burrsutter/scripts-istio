#!/bin/bash

docker login docker.io

docker tag $1 docker.io/burrsutter/recommendation:v2

docker push docker.io/burrsutter/recommendation:v2

kubectl apply -f <(istioctl kube-inject -f Deployment-v2.yml) -n tutorial

# kubectl apply -f <(istioctl kube-inject -f ../../kubernetes/Deployment-v2.yml) -n tutorial