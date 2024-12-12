# Kubernetes Cluster Architecture

## Overview
This document explains the design of the Kubernetes cluster for hosting web services.

## Key Components
- **Ingress**: NGINX Ingress Controller for public API routing.
- **Worker Nodes**: Hosts application pods.
- **Networking**: VPC with public and private subnets.
- **Monitoring**: CloudWatch integrated with PagerDuty for alerts.

## Security
- **VPC Peering**: Ensures secure access to internal-assets.
- **IAM Roles**: Restrict access to critical resources.

## Automation
- Continuous integration and deployment pipelines are used for automated deployments.
