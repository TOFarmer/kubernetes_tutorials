# Overview

This document provides a brief summary of the fundamentals of Kubernetes.
[See here examples included in this repository](#examples) which go into greater
details about specific aspects of Kubernetes.  The foundations of this tutorial
will be based around the Pluralsight course "Kubernetes for Developers: Core Concepts" and the
[Kubernetes documentation](https://kubernetes.io/docs/concepts/).

Kubernetes is open-source container orchestration software; while it supports a
number of containers, the focus for these tutorials will be Docker containers.
Some of Kubernetes key features are:

- Load balancing
- Container-healing
- Storage orchestration
- Automated rollouts/rollbacks
- Secret and configuration management
- Horizontal scaling

Kubernetes can be deployed locally, on a cloud, or on a managed Kubernetes
cluster.  These tutorials will assume that Kubernetes is being run locally and
using Docker Desktop, which includes Kubernetes, and [Kubectl](#kubectl), the
command line interface.

Key components of Kubernetes include:

- [Pods](#pods)
- [Deployments](#deployments)
- [Services](#services)

## Pods

The fundamental element of Kubernetes is the [Pod](https://kubernetes.io/docs/concepts/workloads/pods/pod/).  A Pod provides a single "logical host"
(equivalent to a single physical machine) on which one or more containers can
run.  Although it is common for there to be a one-to-one correspondence of
pods to containers, if containers are tightly coupled (e.g. share namespaces,
ip address, volumes) then they should exist within the same pod.  It is the pod architecture which enables horizontal scaling within Kubernetes.

[See here for a more detailed description of pods](Pods.md)

## Deployments


## Services


## Kubectl

Kubectl is the command line tool for managing Kubernetes servers.











## Clients

It is interesting to note that Kubernetes has some officially supported client
[libraries](https://kubernetes.io/docs/reference/using-api/client-libraries/),
including one for [Python](https://github.com/kubernetes-client/python).  This
can be installed from PyPI:

```
pip install kubernetes
```

Using these clients it is possible to do things like list all pods or watch on a
namespace using the client language.

## Examples


## Glossary

The Kubernetes glossary is [here](https://kubernetes.io/docs/reference/glossary/?fundamental=true)
