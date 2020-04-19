#!/bin/bash

echo 'correct usage is source 0_setenv.sh'

export MINIKUBE_HOME=/Users/burrsutter/devnation;
# this is where the minikube executable is
export PATH=$MINIKUBE_HOME/bin:$PATH
export KUBECONFIG=$MINIKUBE_HOME/.kube/config
export KUBE_EDITOR="code -w"

export ISTIO_HOME=$MINIKUBE_HOME/scripts-istio/istio-1.4.6
export PATH=$ISTIO_HOME/bin:$PATH

echo 'the following after minikube as started'
echo 'eval $(minikube --profile istio-mk docker-env)'