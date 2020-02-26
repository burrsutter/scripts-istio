#!/bin/bash
kubectl create namespace tutorial
kubectl config set-context --current --namespace=tutorial

# Manual injection
kubectl apply -f <(istioctl kube-inject -f ../istio-tutorial/customer/kubernetes/Deployment.yml) -n tutorial
kubectl apply -f <(istioctl kube-inject -f ../istio-tutorial/preference/kubernetes/Deployment.yml) -n tutorial
kubectl apply -f <(istioctl kube-inject -f ../istio-tutorial/recommendation/kubernetes/Deployment.yml) -n tutorial

# OR auto-injection
# kubectl label namespace tutorial istio-injection=enabled 
# kubectl apply -f ../istio-tutorial/customer/kubernetes/Deployment.yml -n tutorial
# kubectl apply -f ../istio-tutorial/preference/kubernetes/Deployment.yml -n tutorial
# kubectl apply -f ../istio-tutorial/recommendation/kubernetes/Deployment.yml -n tutorial

# now create the Services
kubectl create -f ../istio-tutorial/customer/kubernetes/Service.yml -n tutorial
# kubectl patch service/customer -p '{"spec":{"type":"NodePort"}}' -n tutorial
kubectl create -f ../istio-tutorial/preference/kubernetes/Service.yml -n tutorial
kubectl create -f ../istio-tutorial/recommendation/kubernetes/Service.yml -n tutorial

kubectl create -f ../istio-tutorial/customer/kubernetes/Gateway.yml -n tutorial
