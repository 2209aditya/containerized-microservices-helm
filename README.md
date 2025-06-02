# Containerized Microservices with Helm & Kubernetes
## Overview
This project demonstrates deploying a containerized microservices application using Helm charts on a Kubernetes cluster. It covers building Docker images, packaging with Helm, and managing deployments with Kubernetes.
## Features
- Microservices architecture with independent containerized services
- Helm charts for simplified deployment and lifecycle management
- Kubernetes manifests and configurations
- Dockerfiles for containerizing services
- Scalable and modular deployment approach
## Folder Structure
```
containerized-microservices-helm/
├── charts/                 # Helm charts for microservices
├── k8s/                    # Kubernetes manifests (optional)
├── services/               # Source code for individual microservices
│   ├── service1/
│   └── service2/
├── Dockerfile              # Example Dockerfile(s) for services
├── README.md               # Project documentation
```
## Prerequisites
- Docker installed and running
- Kubernetes cluster access (Minikube, AKS, EKS, GKE, etc.)
- Helm installed and configured
- kubectl configured to access your Kubernetes cluster
## Usage
### Build Docker Images
Navigate to each microservice folder and build Docker images:
```bash
docker build -t <your-dockerhub-username>/service1:latest ./services/service1
docker build -t <your-dockerhub-username>/service2:latest ./services/service2
```
Push images to Docker Hub or your container registry:
```bash
docker push <your-dockerhub-username>/service1:latest
docker push <your-dockerhub-username>/service2:latest
```
### Deploy with Helm
```bash
helm install myapp ./charts
```
### Manage Deployment
- Upgrade chart:
```bash
helm upgrade myapp ./charts
```
- Uninstall chart:
```bash
helm uninstall myapp
```
## Notes
- Update image tags in Helm values.yaml before deployment.
- Ensure your Kubernetes context is set to the correct cluster.
