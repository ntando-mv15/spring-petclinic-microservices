#!/bin/bash

set -e

kubectl apply -f kubernetes/namespace.yaml
kubectl apply -f kubernetes/secrets.yaml

kubectl apply -f kubernetes/config-server/
kubectl apply -f kubernetes/discovery-server/

kubectl apply -f kubernetes/customers-service/
kubectl apply -f kubernetes/visits-service/
kubectl apply -f kubernetes/vets-service/
kubectl apply -f kubernetes/genai-service/

kubectl apply -f kubernetes/api-gateway/
kubectl apply -f kubernetes/admin-server/

kubectl apply -f kubernetes/tracing-server/
kubectl apply -f kubernetes/grafana/
kubectl apply -f kubernetes/prometheus/

kubectl apply -f kubernetes/ingress.yaml

echo "Deployment completed successfully."
