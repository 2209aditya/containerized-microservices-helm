# Containerized Microservices with Helm & Kubernetes

## Overview
This project demonstrates containerizing two simple Node.js microservices and deploying them on Azure Kubernetes Service (AKS) using Helm charts.

## Microservices
- service1: Responds with "Hello from Service 1!"
- service2: Responds with "Hello from Service 2!"

## How to run

### 1. Build and push Docker images

```bash
docker build -t yourdockerhubusername/service1:latest ./microservices/service1
docker build -t yourdockerhubusername/service2:latest ./microservices/service2
docker push yourdockerhubusername/service1:latest
docker push yourdockerhubusername/service2:latest