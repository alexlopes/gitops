#!/bin/bash

kubens argocd

kubectl patch configmap argocd-cm -n argocd --type merge --patch "$(yq -o=json < ./argocd/argocd-cm-crossplane-patch.yaml)" 


echo "Patched argocd-cm to add Crossplane as a repository"