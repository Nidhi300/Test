#!/bin/bash
echo "Applying Kubernetes manifests..."
kubectl apply -f ../manifests/

echo "Setting up monitoring..."
# Add monitoring setup commands
