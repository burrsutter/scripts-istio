#!/bin/bash

echo 'correct usage is source 0_setenv.sh'

export MINIKUBE_HOME=/Users/burrsutter/11steps;
# this is where the minikube executable is
export PATH=$MINIKUBE_HOME/bin:$PATH
export KUBECONFIG=$MINIKUBE_HOME/.kube/config
export KUBE_EDITOR="code -w"

export ISTIO_HOME=$MINIKUBE_HOME/scripts-istio/istio-1.3.0
export PATH=$ISTIO_HOME/bin:$PATH

# https://github.com/GoogleContainerTools/krew
# export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"

echo 'the following after minikube as started'
echo 'eval $(minikube --profile istio-mk docker-env)'