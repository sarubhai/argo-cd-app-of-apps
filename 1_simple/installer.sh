#!/bin/bash
# Name: installer.sh
# Owner: Saurav Mitra
# Description: Test ArgoCD Deployment Pattern

# Apply
kubectl apply -f project.yaml
kubectl apply -f app-of-apps.yaml
