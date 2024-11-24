#!/bin/bash
# Name: cleanup.sh
# Owner: Saurav Mitra
# Description: Cleanup ArgoCD Deployment Pattern

# Delete
kubectl delete -f app-of-apps.yaml
kubectl delete -f project.yaml
