#!/bin/bash

minishift profile set istio-tutorial
minishift config set memory 8GB
minishift config set cpus 3
minishift config set image-caching true
minishift config set openshift-version v3.11.0
minishift config set vm-driver virtualbox
minishift addon enable admin-user

#cdk 3.7 bug - docker url check
minishift config set skip-startup-checks true

minishift start
# This needs to be executed again if you restart minishift.
# minishift ssh -- sudo setenforce 0

# Openshift console bug. anyuid needs to be applied after startup
minishift addon apply anyuid

