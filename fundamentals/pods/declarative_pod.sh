#! /usr/bin/env bash

# This will run a pod called 'my-nginx' with a single container, made from the
# nginx:alpine image. This will also create a deployment and replicaset.
kubectl run my-nginx --image=nginx:alpine

# To see the newly created pod (and deployment and replicaset). Note that the
# name of the pod will be 'my-nginx' followed by random string which is a unique
# ID of the pod
kubectl get all

# Then use the full pod name to delete the pod
POD_NAME=`kubectl get pods -o name | grep my-nginx`
echo $POD_NAME
kubectl delete $POD_NAME

# As the desired number of running pods of type my-nginx is 1, kubernetes will
# restart the pod, which will be assigned a different name (and UID)
NEW_POD_NAME=`kubectl get pods -o name | grep my-nginx`
echo $NEW_POD_NAME

# As with Docker containers, port forwarding has to be specified.
# To enable port forwarding for the new pod that was automatically created, we
# can use the port-forward command. This will map the localhost 8080 port to the
# pod 80 port (which is defined within the nginx:alpine image). The & is
# included because this command normally pauses the terminal.
kubectl port-forward $NEW_POD_NAME 8080:80

# You can now check that forwarding is valid using a browser, which will display
# a welcome to nginx

# It is important to note that the port option for kubectl run does not also
# setup port forwarding - all this does is expose the specified port for the
# container. So the nginx image is effectively setup so that the following
# occurs:
kubectl run my-nginx --image=nginx:alpine --port=80

# Finally to delete a pod you must delete the deployment
kubectl delete deployment my-nginx
