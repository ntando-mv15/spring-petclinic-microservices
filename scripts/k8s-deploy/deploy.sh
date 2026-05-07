#!/bin/bash

set -e

K8S_DIR="$HOME/k8s-project/spring-petclinic-microservices/kubernetes"

echo "Deploying Petclinic Kubernetes Platform..."

kubectl apply -f $K8S_DIR/namespace.yaml
kubectl apply -f $K8S_DIR/secrets.yaml

kubectl apply -f $K8S_DIR/config-server/
kubectl apply -f $K8S_DIR/discovery-server/

kubectl apply -f $K8S_DIR/customers-service/
kubectl apply -f $K8S_DIR/visits-service/
kubectl apply -f $K8S_DIR/vets-service/
kubectl apply -f $K8S_DIR/genai-service/

kubectl apply -f $K8S_DIR/api-gateway/
kubectl apply -f $K8S_DIR/admin-server/
kubectl apply -f $K8S_DIR/tracing-server/

kubectl apply -f $K8S_DIR/ingress.yaml

echo "Deployment completed successfully."
