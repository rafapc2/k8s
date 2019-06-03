#!/bin/bash

echo "creando namespace"
kubectl create -f namespaces.yml

echo "iniciando creacion de POD"
kubectl create -f busybox.yml --namespace=dev1-mdw