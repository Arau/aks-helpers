#!/bin/bash


source ./etc/config
az aks get-credentials --resource-group $AKS_RG --name $CLUSTER_NAME -f ~/.kube/$CLUSTER_NAME
echo -e "Access to the cluster:\n\texport KUBECONFIG=~/.kube/$CLUSTER_NAME"
