#!/bin/bash

echo "Access ArgoCD UI at: https://localhost:8080"
echo "Username: admin"
echo -n "Password: "
kubectl get secret argocd-initial-admin-secret -n argocd -o jsonpath="{.data.password}" | base64 --decode; echo

kubectl port-forward svc/argocd-server -n argocd 8080:443 > /dev/null 2>&1 &