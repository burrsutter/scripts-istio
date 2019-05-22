#!/bin/bash

open http://grafana-istio-system.$(minishift --profile istio-ms ip).nip.io

open http://tracing-istio-system.$(minishift --profile istio-ms ip).nip.io

open http://prometheus-istio-system.$(minishift --profile istio-ms ip).nip.io

open http://kiali-istio-system.$(minishift --profile istio-ms ip).nip.io/kiali

