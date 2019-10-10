#!/bin/bash

RECOPOD=$(kubectl get pod -n tutorial -l app=recommendation -o \
'jsonpath={.items[0].metadata.name}')

kubectl exec -it $RECOPOD -n tutorial -c recommendation -- curl preference:8080
