#!/bin/bash
cd ../istio-tutorial/recommendation/java/quarkus

mvn clean package -DskipTests

docker build -t example/recommendation:v2 .

kubectl apply -f <(istioctl kube-inject -f ../istio-tutorial/recommendation/kubernetes/Deployment-v2.yml) -n tutorial