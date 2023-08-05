#!/bin/bash
curl -Lo minikube https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
sudo install minikube /usr/local/bin/
minikube version
sudo rm minikube
minikube kubectl	# kubectl
minikube start --kubernetes-version=v1.23.3  # kubernetes