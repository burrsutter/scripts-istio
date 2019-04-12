#!/bin/bash

CUSTPOD=$(kubectl get pod -n tutorial -l app=customer -o \
'jsonpath={.items[0].metadata.name}')

kubectl exec -it $CUSTPOD -n tutorial -c customer -- curl recommendation:8080
