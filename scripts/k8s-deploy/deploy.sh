#!/bin/bash

set -e

kubectl apply -f k8s/namespace.yaml
kubectl apply -f k8s/secrets.yaml

kubectl apply -f k8s/config-server/
kubectl apply -f k8s/discovery-server/

kubectl apply -f k8s/customers-service/
kubectl apply -f k8s/visits-service/
kubectl apply -f k8s/vets-service/
kubectl apply -f k8s/genai-service/

kubectl apply -f k8s/api-gateway/
kubectl apply -f k8s/admin-server/

kubectl apply -f k8s/tracing-server/
kubectl apply -f k8s/grafana/
kubectl apply -f k8s/prometheus/

kubectl apply -f k8s/ingress.yaml

echo "Deployment completed successfully."
