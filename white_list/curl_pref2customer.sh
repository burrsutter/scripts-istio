#!/bin/bash

PREFPOD=$(kubectl get pod -n tutorial -l app=preference -o \
'jsonpath={.items[0].metadata.name}')

kubectl exec -it $PREFPOD -n tutorial -c preference -- curl customer:8080
