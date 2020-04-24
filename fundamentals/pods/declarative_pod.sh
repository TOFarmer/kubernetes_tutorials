#! /usr/bin/env bash

# This will run a pod called 'my-nginx' with a single container, made from the
# nginx:alpine image. This will also create a deployment and replicaset.
kubectl run my-nginx --image=nginx:alpine

# To see the newly created pod (and deployment and replicaset). Note that the
# name of the pod will be 'my-nginx' followed by random string which is a unique
# ID of the pod
kubectl get all
