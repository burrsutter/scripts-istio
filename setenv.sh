#!/bin/bash

export MINIKUBE_HOME=/Users/burrsutter/minikube_0.29.0/bin;
export PATH=$MINIKUBE_HOME:$PATH
# do NOT change the KUBECONFIG when working with minishift
# export KUBECONFIG=$MINIKUBE_HOME/.kube/config:$MINIKUBE_HOME/.kube/kubconfig2

export KUBE_EDITOR="code -w"

export ISTIO_HOME=/Users/burrsutter/minikube_0.29.0/istio-1.0.2
export PATH=$ISTIO_HOME/bin:$PATH

eval $(minikube docker-env)
