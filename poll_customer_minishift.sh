#!/bin/bash
while true
# do curl customer-tutorial.$(minishift ip).nip.io
# do curl customer-tutorial.192.168.99.100.nip.io
do curl istio-ingressgateway-istio-system.$(minishift --profile istio-ms ip).nip.io/customer
sleep .3
done