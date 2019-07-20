#!/bin/bash

export GRAALVM_HOME=~/tools/graalvm-ce-1.0.0-rc16/Contents/Home/

cd ../istio-tutorial/recommendation/java/quarkus

mvn package -Pnative -Dnative-image.docker-build=true -DskipTests
docker build -f src/main/docker/Dockerfile.native -t dev.local/burrsutter/recommendation:v2 .

