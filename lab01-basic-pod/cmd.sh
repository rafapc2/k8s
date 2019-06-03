#!/bin/bash


minikube addons enable metrics-server

kubectl get apiservices


echo "creando namespace"
kubectl create -f namespaces.yml

echo "iniciando creacion de POD"
kubectl create -f deployment.yml --namespace=dev1-mdw


kubectl config set-context --current --namespace=gdev1-mdw