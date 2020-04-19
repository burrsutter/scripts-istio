#!/bin/bash

echo 'correct usage is source 0_setenv.sh'

export PROJECT_HOME=/Users/burrsutter/tryopenshift;
export PATH=$PROJECT_HOME/bin:$PATH
# export KUBECONFIG=$PROJECT_HOME/.kube/config
export KUBECONFIG=$PROJECT_HOME/azr-apr18/auth/kubeconfig
export KUBE_EDITOR="code -w"

export ISTIO_HOME=$PROJECT_HOME/scripts-istio/istio-1.4.6
export PATH=$ISTIO_HOME/bin:$PATH
