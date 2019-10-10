#!/bin/bash

NGINXPOD=$(kubectl get pod -n egresstest -l app=nginx -o \
'jsonpath={.items[0].metadata.name}')

kubectl exec -it $NGINXPOD -c nginx -n egresstest -- curl recommendation.tutorial.svc.cluster.local:8080