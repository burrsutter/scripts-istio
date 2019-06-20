#!/bin/bash
kubectl create namespace tutorial
kubens tutorial

# kubectl label set istio-injection=enabled 

kubectl apply -f <(istioctl kube-inject -f ../istio-tutorial/customer/kubernetes/Deployment.remote.yml) -n tutorial
kubectl create -f ../istio-tutorial/customer/kubernetes/Service.yml -n tutorial
kubectl patch service/customer -p '{"spec":{"type":"NodePort"}}' -n tutorial
kubectl apply -f <(istioctl kube-inject -f ../istio-tutorial/preference/kubernetes/Deployment.remote.yml) -n tutorial
kubectl create -f ../istio-tutorial/preference/kubernetes/Service.yml -n tutorial
kubectl apply -f <(istioctl kube-inject -f ../istio-tutorial/recommendation/kubernetes/Deployment.remote.yml) -n tutorial
kubectl create -f ../istio-tutorial/recommendation/kubernetes/Service.yml -n tutorial

kubectl create -f ../istio-tutorial/customer/kubernetes/Gateway.yml -n tutorial
