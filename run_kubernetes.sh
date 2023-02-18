#!/usr/bin/env bash

dockerpath=tobisanh/op-ml

kubectl run op-ml --image=$dockerpath --port=80 --labels app=op-ml

kubectl get pods

kubectl forward-port op-ml 8000:80

