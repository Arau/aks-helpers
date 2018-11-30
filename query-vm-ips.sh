#!/bin/bash

source ./etc/config

if [ -z $VMS_RG ]; then
    echo "Resource group for VMs not defined"
    exit 1
fi

az vm list-ip-addresses --resource-group $VMS_RG --query "[*].virtualMachine.network.privateIpAddresses[0]" -o tsv
