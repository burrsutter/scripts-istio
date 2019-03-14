#!/bin/bash

command1="kubectl replace -f ../istio-tutorial/istiofiles/destination-rule-recommendation_cb_policy_version_v2.yml -n tutorial"
echo $command1
$command1


echo "Now Siege it"