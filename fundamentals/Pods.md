# Pods

The fundamental element of Kubernetes is the [Pod](https://kubernetes.io/docs/concepts/workloads/pods/pod/).

As previously mentioned, a Pod provides a single "logical host" (equivalent to a single physical or virtual machine) on which one or more containers can
run.  Due to this, the following are shared between containers within the same
pod:

- namespaces
- cgroups
- ip address
- volumes/storage
- ports

Due to this, containers within a pod can communicate with `localhost` and can
access the same locations in a volume, which is specific to a pod.

Pods (like all objects in a Kubernetes cluster) are assigned a unique ID (UID)
upon creation (e.g. `my-nginx-65545bf4sd-nk3ps` for a pod created with the name
my-nginx).

## Examples
