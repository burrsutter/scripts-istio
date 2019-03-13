#!/bin/bash
cd ../istio-tutorial/recommendation/java/vertx

mvn clean package

docker build -t example/recommendation:v2 .

kubectl apply -f <(istioctl kube-inject -f ../../kubernetes/Deployment-v2.yml) -n tutorial