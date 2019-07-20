#!/bin/bash
cd ../istio-tutorial/recommendation/java/quarkus

mvn clean package -DskipTests

docker build -t dev.local/burrsutter/recommendation:v2 .

