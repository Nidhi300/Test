# Automated Deployment and Infrastructure Setup

## Repository Overview
This repository contains a .NET Core Web API application and automation scripts for deployment using Docker. The repository includes:

- `super-service/`: Contains the application code and the `Dockerfile` and application code.
- `Deploy.ps1`: A PowerShell script for automating the deployment process, including testing, building, and running the application.

## Prerequisites
Before running the deployment, ensure you have the following installed:

1. **Docker:** To build and run the application as a container.
2. **PowerShell Core (pwsh):** To execute the deployment script.
3. **.NET Core SDK:** For running tests and building the application.

---

## Instructions to Run the Solution (Part 1)

### Steps to Deploy
Follow these steps to deploy the application:

1. **Clone the Repository:**
   ```bash
   git clone <repository-url>
   cd <repository-folder>
   ```

2. **Run the Deployment Script:**
   Execute the PowerShell script from the root directory to automate testing, building, and running the application:
   ```bash
   pwsh Deploy.ps1
   ```

### What the Script Does
1. **Runs Unit Tests:** Ensures the application functions as expected before deployment.
2. **Builds a Docker Image:** Packages the application as a Docker image with the tag `super-service:latest`.
3. **Runs a Docker Container:** Starts the application in a container, accessible at `http://localhost:8080`.

### Verifying the Deployment
1. Open a browser and navigate to:
   ```
   http://localhost:8080
   ```
2. Verify that the application is running and responding correctly.

---

## Troubleshooting

### Common Issues and Solutions

1. **Tests Failing:**
   - **Cause:** Unit tests in the `test` directory failed.
   - **Solution:** Review and fix the tests in `super-service/test/TimeControllerTests.cs`. Rerun the deployment script after resolving the issues.

2. **Docker Errors:**
   - **Cause:** Docker is not running or is misconfigured.
   - **Solution:** Ensure Docker is installed, running, and properly configured on your system.

3. **Port Conflicts:**
   - **Cause:** Port `8080` is already in use.
   - **Solution:** Edit the `Dockerfile` or deployment script to use a different port, or free up the port by stopping the conflicting process.
