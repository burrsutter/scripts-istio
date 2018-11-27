#!/bin/bash

kubectl delete deployment/recommendation-v2 -n tutorial
kubectl delete pod -l app=recommendation,version=v2 -n tutorial
kubectl delete destinationrule recommendation -n tutorial
kubectl delete virtualservice recommendation -n tutorial

docker rmi example/recommendation:v2
cp RecommendationVerticle.java ../istio-tutorial/recommendation/java/vertx/src/main/java/com/redhat/developer/demos/recommendation/

