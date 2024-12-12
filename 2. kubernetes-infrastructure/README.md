# Kubernetes Infrastructure for Web Services

This repository contains the design and implementation files for a Kubernetes cluster to host web services providing public APIs while securely connecting to internal systems.

## Repository Structure
- `kubernetes_infra_diagram.jpg`: Contains architectural diagrams.
- `manifests/`: Kubernetes YAML manifests for deployment, service, and ingress.
- `scripts/`: Shell scripts for setting up the cluster and deploying services.
- `docs/`: Detailed architecture documentation.

## Prerequisites
- Kubernetes cluster (e.g., EKS, AKS, GKE)
- kubectl configured for the cluster
- AWS CLI (if using AWS)

## Deployment Steps
1. Apply Kubernetes manifests:
   ```bash
   kubectl apply -f manifests/
