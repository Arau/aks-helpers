#!/bin/bash

source ./etc/config
az aks get-versions --location $LOCATION | grep "orchestratorVersion"
