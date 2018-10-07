#!/bin/bash

# open localhost:16686
# https://www.jaegertracing.io/docs/1.6/getting-started/

kubectl -n istio-system port-forward $(kubectl get pod -n istio-system -l app=jaeger -o jsonpath='{.items[0].metadata.name}') 16686:16686
