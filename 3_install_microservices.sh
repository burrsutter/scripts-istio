#!/bin/bash

# https://redhat-developer-demos.github.io/istio-tutorial/istio-tutorial/1.0.0/1setup.html
# https://redhat-developer-demos.github.io/istio-tutorial/istio-tutorial/1.0.0/2deploy-microservices.html
# assumes (kubectl or oc) and istioctl and mvn in the PATH
# assumes the 'docker' tool points to minikube/minishift 
# assumes this script is in a directory called 'scripts-istio'
# which is a peer of 'istio-tutorial'
# assumes you have 'kubens tutorial' or 'oc project tutorial'

kubectl create namespace tutorial
# oc adm policy add-scc-to-user privileged -z default -n tutorial
kubens tutorial

# Customer
cd ../istio-tutorial/customer/java/quarkus 
mvn clean package -DskipTests
docker build -t example/customer .

kubectl apply -f <(istioctl kube-inject -f ../../kubernetes/Deployment.yml) -n tutorial
kubectl create -f ../../kubernetes/Service.yml -n tutorial

# for minikube, open a NodePort
kubectl patch service/customer -p '{"spec":{"type":"NodePort"}}' -n tutorial

# for minishift, create a Route
# oc expose service customer

# Preference 
cd ../../../preference/java/quarkus
mvn clean package -DskipTests
docker build -t example/preference:v1 .

kubectl apply -f <(istioctl kube-inject -f ../../kubernetes/Deployment.yml) -n tutorial
kubectl create -f ../../kubernetes/Service.yml -n tutorial

# Recommendation
cd ../../../recommendation/java/quarkus
mvn clean package -DskipTests
docker build -t example/recommendation:v1 .

kubectl apply -f <(istioctl kube-inject -f ../../kubernetes/Deployment.yml) -n tutorial
kubectl create -f ../../kubernetes/Service.yml -n tutorial

kubectl create -f ../../../customer/kubernetes/Gateway.yml -n tutorial