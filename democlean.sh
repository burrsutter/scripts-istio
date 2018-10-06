#!/bin/bash

oc login $(minishift ip):8443 -u admin -p admin

oc project tutorial

oc delete deployment/recommendation-v2 
oc delete pod -l app=recommendation,version=v2
oc delete destinationrule recommendation
oc delete virtualservice recommendation

docker rmi example/recommendation:v2
cp RecommendationVerticle.java ../istio-tutorial/recommendation/java/vertx/src/main/java/com/redhat/developer/demos/recommendation/

