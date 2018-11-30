#!/bin/bash

CLUSTER_NAME=ferran-$RANDOM
sed -i "s/CLUSTER_NAME=.*$/CLUSTER_NAME=$CLUSTER_NAME/" ./etc/config

source ./etc/config

az aks create                         \
    --name $CLUSTER_NAME              \
    --node-count $NODE_COUNT          \
    --resource-group $AKS_RG          \
    --kubernetes-version $K8S_VERSION \
    --node-vm-size $NODE_SIZE         \
    --node-osdisk-size $DISK_SIZE     \
    --location $LOCATION              \
    --generate-ssh-keys
