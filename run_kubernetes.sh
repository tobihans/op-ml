#!/usr/bin/env bash

dockerpath=tobisanh/op-ml

kubectl run op-ml --image=$dockerpath --port=80 --labels app=op-ml

kubectl get pods

kubectl port-forward op-ml 8000:80

