#!/bin/bash

oc scale deployment recommendation-v2 --replicas=1 -n tutorial
oc delete pod -l app=recommendation,version=v2
oc delete virtualservice/recommendation
oc delete destinationrule/recommendation