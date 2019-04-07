#!/bin/bash

export GRAALVM_HOME=~/tools/graalvm-ce-1.0.0-rc15/Contents/Home/

cd ../istio-tutorial/recommendation/java/quarkus

mvn package -Pnative -Dnative-image.docker-build=true -DskipTests
docker build -f src/main/docker/Dockerfile.native -t example/recommendation:v2 .

kubectl apply -f <(istioctl kube-inject -f ../../kubernetes/Deployment-v2.yml) -n tutorial