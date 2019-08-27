#!/bin/bash
kubectl create namespace tutorial
kubectl config set-context $(kubectl config current-context) --namespace=tutorial

# on minishift
oc adm policy add-scc-to-user privileged -z default -n tutorial
# kubectl label set istio-injection=enabled 

kubectl apply -f <(istioctl kube-inject -f ../istio-tutorial/customer/kubernetes/Deployment.yml) -n tutorial
kubectl create -f ../istio-tutorial/customer/kubernetes/Service.yml -n tutorial
kubectl apply -f <(istioctl kube-inject -f ../istio-tutorial/preference/kubernetes/Deployment.yml) -n tutorial
kubectl create -f ../istio-tutorial/preference/kubernetes/Service.yml -n tutorial
kubectl apply -f <(istioctl kube-inject -f ../istio-tutorial/recommendation/kubernetes/Deployment.yml) -n tutorial
kubectl create -f ../istio-tutorial/recommendation/kubernetes/Service.yml -n tutorial

kubectl apply -f ../istio-tutorial/customer/kubernetes/Gateway.yml -n tutorial

