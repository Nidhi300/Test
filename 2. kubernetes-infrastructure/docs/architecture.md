# System Architecture Documentation

## Hosting Provider
- **Provider:** AWS (or your chosen provider)
- **Reason:** Offers robust Kubernetes services (EKS), high availability, and secure integration with internal systems.

## Public API Hosting
- Web services will be exposed via a Kubernetes Ingress controller using an NGINX Ingress for routing HTTP/HTTPS traffic.
- **Diagram:** (Insert a simple diagram showing API requests flowing through the Load Balancer to the Kubernetes cluster.)

## Monitoring and Alerting
- **Tool:** Prometheus and Alertmanager for tracking service health.
- **Notification:** PagerDuty alerts support teams on service connectivity issues.

## Automated Deployment
- Developers deploy code through a CI/CD pipeline integrated with GitHub Actions.
- Helm charts are used for managing Kubernetes configurations.

## Secure Access to Internal Systems
- Internal systems are hosted on the `internal-assets` VPC.
- **Network Setup:**
  - Secure access via VPC Peering.
  - Kubernetes Pods use IAM roles for service accounts to access internal APIs.
- **Security Measures:**
  - RBAC policies restrict access based on roles.
  - All communication is encrypted using TLS.

