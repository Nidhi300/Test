# Deploy.ps1

# 1. Run Tests
Write-Host "Running unit tests..."
dotnet test ./super-service/test/SuperService.UnitTests.csproj

if ($LASTEXITCODE -ne 0) {
    Write-Error "Tests failed. Deployment aborted."
    exit 1
}

# 2. Build Docker Image
Write-Host "Building Docker image..."
docker build -t super-service:latest -f ./super-service/Dockerfile .

if ($LASTEXITCODE -ne 0) {
    Write-Error "Docker build failed. Deployment aborted."
    exit 1
}

# 3. Remove Existing Container (if any)
Write-Host "Removing any existing Docker container named 'super-service'..."
docker rm -f super-service 2>$null

# 4. Run Docker Container
Write-Host "Running Docker container..."
docker run -d -p 8080:80 --name super-service super-service:latest

if ($LASTEXITCODE -ne 0) {
    Write-Error "Failed to run Docker container."
    exit 1
}

Write-Host "Deployment completed successfully. Application is running on http://localhost:8080."
