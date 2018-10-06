#!/bin/bash

command1="istioctl replace -f ../istio-tutorial/istiofiles/destination-rule-recommendation_cb_policy_pool_ejection.yml -n tutorial"
echo $command1
$command1
