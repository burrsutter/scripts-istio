#!/bin/bash

do curl istio-ingressgateway-istio-system.$(minishift --profile istio-ms ip).nip.io/customer
echo
command1="curl -A Safari istio-ingressgateway-istio-system.$(minishift --profile istio-ms ip).nip.io/customer"
echo $command1
$command1
echo
command2="curl -A Firefox istio-ingressgateway-istio-system.$(minishift --profile istio-ms ip).nip.io/customer"
echo $command2
$command2
echo
