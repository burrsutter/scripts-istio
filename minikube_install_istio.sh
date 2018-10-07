#!/bin/bash

kubectl apply -f $ISTIO_HOME/install/kubernetes/helm/istio/templates/crds.yaml

kubectl apply -f $ISTIO_HOME/install/kubernetes/istio-demo.yaml