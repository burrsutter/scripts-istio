#!/bin/bash

command1="kubectl scale --replicas=1 deployment/recommendation-v2"
echo $command1
$command1