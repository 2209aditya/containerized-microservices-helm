
# Set base path
$basePath = "containerized-microservices-helm"

# Create directory structure
New-Item -Path $basePath -ItemType Directory -Force
Set-Location $basePath

# Microservices
New-Item -Path "microservices\service1" -ItemType Directory -Force
New-Item -Path "microservices\service2" -ItemType Directory -Force

# Helm chart
New-Item -Path "helm-chart\templates" -ItemType Directory -Force

# Root README
New-Item -Path "README.md" -ItemType File -Force

# Service1 files
New-Item -Path "microservices\service1\app.js" -ItemType File -Force
New-Item -Path "microservices\service1\package.json" -ItemType File -Force
New-Item -Path "microservices\service1\Dockerfile" -ItemType File -Force

# Service2 files
New-Item -Path "microservices\service2\app.js" -ItemType File -Force
New-Item -Path "microservices\service2\package.json" -ItemType File -Force
New-Item -Path "microservices\service2\Dockerfile" -ItemType File -Force

# Helm files
New-Item -Path "helm-chart\Chart.yaml" -ItemType File -Force
New-Item -Path "helm-chart\values.yaml" -ItemType File -Force
New-Item -Path "helm-chart\templates\deployment-service1.yaml" -ItemType File -Force
New-Item -Path "helm-chart\templates\service-service1.yaml" -ItemType File -Force
New-Item -Path "helm-chart\templates\deployment-service2.yaml" -ItemType File -Force
New-Item -Path "helm-chart\templates\service-service2.yaml" -ItemType File -Force

Write-Host "✅ Project structure created in: $PWD"
