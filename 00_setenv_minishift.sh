#!/bin/bash

echo 'correct usage is source 0_setenv.sh'

export MINISHIFT_HOME=/Users/burrsutter/minishift_1.33.0/bin;
export PATH=$MINISHIFT_HOME:$PATH
# adjusting the KUBECONFIG does not work with minishift
# export KUBECONFIG=$MINISHIFT_HOME/.kube/config:$MINIKUBE_HOME/.kube/kubconfig2
export KUBE_EDITOR="code -w"

export ISTIO_HOME=/Users/burrsutter/minishift_1.33.0/scripts-istio/istio-1.1.1
export PATH=$ISTIO_HOME/bin:$PATH

echo 'the following after minishift as started'
echo 'eval $(minishift --profile istio-tutorial docker-env)'