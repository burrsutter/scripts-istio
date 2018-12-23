#!/bin/bash
while true
do curl customer-tutorial.$(minishift ip).nip.io
# do curl customer-tutorial.192.168.99.105.nip.io
sleep .5
done