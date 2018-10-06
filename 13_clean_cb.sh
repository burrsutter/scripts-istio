#!/bin/bash

kubectl delete virtualservice/recommendation -n tutorial
kubectl delete destinationrule/recommendation -n tutorial