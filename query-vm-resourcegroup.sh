#!/bin/bash

source ./etc/config

RG=$(az group list | grep -C 4 $CLUSTER_NAME | grep "name" | awk '{print $2}' | tr -d ',')
echo $RG
sed -i "s/VMS_RG=.*$/VMS_RG=$RG/" ./etc/config
