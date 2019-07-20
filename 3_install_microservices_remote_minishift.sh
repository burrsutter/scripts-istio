#!/bin/bash
kubectl create namespace tutorial
kubens tutorial

# on minishift
oc adm policy add-scc-to-user privileged -z default -n tutorial

# kubectl label set istio-injection=enabled 

kubectl apply -f <(istioctl kube-inject -f ../istio-tutorial/customer/kubernetes/Deployment.yml) -n tutorial
kubectl create -f ../istio-tutorial/customer/kubernetes/Service.yml -n tutorial
kubectl apply -f <(istioctl kube-inject -f ../istio-tutorial/preference/kubernetes/Deployment.yml) -n tutorial
kubectl create -f ../istio-tutorial/preference/kubernetes/Service.yml -n tutorial
kubectl apply -f <(istioctl kube-inject -f ../istio-tutorial/recommendation/kubernetes/Deployment.yml) -n tutorial
kubectl create -f ../istio-tutorial/recommendation/kubernetes/Service.yml -n tutorial

kubectl create -f ../istio-tutorial/customer/kubernetes/Gateway.yml -n tutorial

