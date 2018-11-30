#!/bin/bash

# Loading form config:
# ResourceGroup aks_rg
# Region location
source ./etc/config

az group create --name $AKS_RG --location $LOCATION

