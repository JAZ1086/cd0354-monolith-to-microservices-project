#!/bin/bash

# Appliquer les variables d'environnement et les secrets
# kubectl apply -f aws-secret.yaml
# kubectl apply -f env-secret.yaml
# kubectl apply -f env-configmap.yaml

# kubectl apply -f backend-feed-deployment.yaml
# kubectl apply -f backend-feed-service.yaml
# 
# kubectl apply -f backend-user-deployment.yaml
# kubectl apply -f backend-user-service.yaml
# 
# 
# kubectl apply -f frontend-deployment.yaml
# kubectl apply -f frontend-service.yaml
# 
# 
# kubectl apply -f reverseproxy-deployment.yaml
# kubectl apply -f reverseproxy-service.yaml
# 

echo "-------------------Removing Old Pods--------------------"
kubectl delete deploy backend-user
kubectl delete deploy backend-feed
kubectl delete deploy frontend
kubectl delete deploy reverseproxy
# 
echo "-------------------Creating new Pods--------------------"
kubectl apply -f backend-feed-deployment.yaml
kubectl apply -f backend-user-deployment.yaml
kubectl apply -f frontend-deployment.yaml
kubectl apply -f reverseproxy-deployment.yaml

kubectl apply -f backend-feed-service.yaml
kubectl apply -f backend-user-service.yaml
kubectl apply -f frontend-service.yaml
kubectl apply -f reverseproxy-service.yaml
# 
