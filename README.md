# Timoni Modules

### Prerequisites
- Install Timoni with:
```sh
brew install stefanprodan/tap/timoni
```
- A Kubernetes cluster
```sh
kind create cluster --name timoni
```

### Concepts
- `Module`: App definition containing Kubernetes CUE templates and configuration schema, distributed as OCI artifacts.
- `Instance`: App instantiation referencing the module and workloads deployed on a Kubernetes cluster.
- `Bundle`: App composition bundling multiple modules and configurations into a deployable unit.
- `Artifact`: Packaging format used for distributing modules and bundles to container registries.

### Usage
To create an instance using the default values:

```sh 
 π timoni-modules main ✗ ❯ timoni -n default apply app-template oci://ghcr.io/duyhenryer/timoni-modules/app-template
11:38AM INF i:app-template > pulling oci://ghcr.io/duyhenryer/timoni-modules/app-template:latest
11:38AM INF i:app-template > using module timoni.sh/app-template version 0.0.1
11:38AM INF i:app-template > installing app-template in namespace default
11:38AM INF i:app-template > ServiceAccount/default/app-template created
11:38AM INF i:app-template > ConfigMap/default/app-template-d6cd7cc6 created
11:38AM INF i:app-template > Service/default/app-template created
11:38AM INF i:app-template > Deployment/default/app-template created
11:38AM INF i:app-template > resources are ready
```
Check status:
```sh
 π timoni-modules main ✗ ❯ timoni status app-template
11:41AM INF i:app-template > last applied 2024-11-20T04:38:23Z
11:41AM INF i:app-template > module oci://ghcr.io/duyhenryer/timoni-modules/app-template:0.0.1
11:41AM INF i:app-template > digest sha256:2d27cf4141cf000cc621ecb071478551426ce7375b1e133673c1fabecafcb2fc
11:41AM INF i:app-template > container image cgr.dev/chainguard/curl:latest
11:41AM INF i:app-template > container image cgr.dev/chainguard/nginx:1.25.3@sha256:3dd8fa303f77d7eb6ce541cb05009a5e8723bd7e3778b95131ab4a2d12fadb8f
11:41AM INF i:app-template > ServiceAccount/default/app-template Current - Resource is current
11:41AM INF i:app-template > ConfigMap/default/app-template-d6cd7cc6 Current - Resource is always ready
11:41AM INF i:app-template > Service/default/app-template Current - Service is ready
11:41AM INF i:app-template > Deployment/default/app-template Current - Deployment is available. Replicas: 1
```
Verify pods:

```sh 
 π timoni-modules main ✗ ❯ k get pods
NAME                            READY   STATUS    RESTARTS   AGE
app-template-57476b5d68-gb6dv   1/1     Running   0          75s
```
### References
- https://timoni.sh/quickstart/