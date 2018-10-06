#!/bin/bash

siege -r 2 -c 20 -v customer-tutorial.$(minishift ip).nip.io
