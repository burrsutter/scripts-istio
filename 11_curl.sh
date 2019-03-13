#!/bin/bash

echo
command1="curl -A Safari customer-tutorial.$(minishift ip).nip.io"
echo $command1
$command1
echo
command2="curl -A Firefox customer-tutorial.$(minishift ip).nip.io"
echo $command2
$command2
echo
