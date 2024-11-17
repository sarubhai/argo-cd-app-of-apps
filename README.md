# ArgoCD App of Apps Pattern

This repository demonstrates the **App of Apps** pattern using ArgoCD to manage multiple applications across multiple environments (development, staging, and production). It contains multiple applications managed as Helm charts. Each application is defined in its own ArgoCD `Application` manifest.

## Applications

1. External Secrets
2. Sealed Secrets
3. Reloader

## Structure
- `manifests/`: ArgoCD application manifests and overlays for environments.
- `helm-values/`: Environment-specific Helm chart values for each application.
- `bootstrap/`: Initial deployment manifests for each environment.

- **`project.yaml`**: ArgoCD project configuration.
- **`app-of-apps.yaml`**: The main application that defines all child applications.
- **`apps/`**: Individual ArgoCD Application manifests for each Helm-based application.

## Usage

1. Deploy the main `app-of-apps.yaml` manifest in your ArgoCD instance.
2. ArgoCD will automatically sync and manage the child applications defined in `apps/`.

## Prerequisites

Ensure you have [ArgoCD](https://appdev24.com/pages/55/install-argo-cd-in-kubernetes) and Helm installed in your Kubernetes cluster.

## Deployment Steps

1. Apply the bootstrap manifest for your environment:
   ```
   kubectl apply -f bootstrap/development-bootstrap.yaml
   ```