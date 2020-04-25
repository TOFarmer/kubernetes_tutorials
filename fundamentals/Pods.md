# Pods

The fundamental element of Kubernetes is the [Pod](https://kubernetes.io/docs/concepts/workloads/pods/pod/).

As previously mentioned, a Pod provides a single "logical host" (equivalent to a
single physical or virtual machine) on which one or more containers can run.
Due to this, the following are shared between containers within the same
pod:

- namespaces
- cgroups
- ip address
- volumes/storage
- ports

Due to this, containers within a pod can communicate with `localhost` and can
access the same locations in a volume, which is specific to a pod.

Pods (like all objects in a Kubernetes cluster) are assigned a unique ID (UID)
upon creation, and pod names are also set by appending a unique string to the
`name` passed to `run` (e.g. `my-nginx-65545bf4sd-nk3ps` for a pod created with
the `name` my-nginx).

## Declarative vs Imperative Pod Creation

Pods can created in two different ways, [Declarative](#declarative) and
[Imperative](#imperative). While the first can be useful for quick tests, the
imperative approach is the typical method for pod creation.

### Declarative

Using a series of kubectl commands which configures the pod (Declarative). See
[this example](./pods/declarative_pod.sh) for a very basic description of some
kubectl commands used for the declarative approach.

### Imperative
Using a YAML file which contains the configuration of the pod, which we then
pass to either `kubectl create` or `kubectl apply` (Imperative). There are a
number of example YAML files in pods, with explanations of there purposes in
[Examples](#examples).

## Examples
