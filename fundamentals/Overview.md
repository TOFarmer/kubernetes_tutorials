# Overview

This document provides a brief summary of the fundamentals of Kubernetes.
[See here examples included in this repository](#examples) which go into greater
details about specific aspects of Kubernetes.  The foundations of this tutorial
will be based around the Pluralsight course "Kubernetes for Developers: Core Concepts"

Kubernetes is open-source container orchestration software; while it supports a
number of containers, the focus for these tutorials will be Docker containers.
Some of Kubernetes key features are:

- Load balancing
- Container-healing
- Storage orchestration
- Automated rollouts/rollbacks
- Secret and configuration management
- Horizontal scaling

## Pods

The fundamental element of Kubernetes is the [Pod](https://kubernetes.io/docs/concepts/workloads/pods/pod/).  A Pod provides a single "logical host"
(equivalent to a single physical machine) on which one or more containers can
run.  Although it is common for there to be a one-to-one correspondence of
pods to containers, if containers are tightly coupled (e.g. share namespaces,
ip address, volumes) then they should exist within the same pod.  It is the pod architecture which enables horizontal scaling within Kubernetes.



















## Examples
