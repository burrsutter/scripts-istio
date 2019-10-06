#!/bin/bash

kubectl scale deployment recommendation-v2 --replicas=1 -n tutorial
kubectl delete deployment recommendation-v2
kubectl delete pod -l app=recommendation,version=v2
kubectl delete virtualservice/recommendation
kubectl delete destinationrule/recommendation