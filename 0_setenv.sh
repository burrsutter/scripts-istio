#!/bin/bash

echo 'correct usage is source 0_setenv.sh'

export MINIKUBE_HOME=/Users/burrsutter/minikube_0.35.0/bin;
export PATH=$MINIKUBE_HOME:$PATH
export KUBECONFIG=$MINIKUBE_HOME/.kube/config:$MINIKUBE_HOME/.kube/kubconfig2
export KUBE_EDITOR="code -w"

export ISTIO_HOME=/Users/burrsutter/minikube_0.35.0/scripts-istio/istio-1.0.5
export PATH=$ISTIO_HOME/bin:$PATH


echo 'the following after minikube as started'
echo 'eval $(minikube --profile istio docker-env)'