# Bundle
 
Commands for working with bundles:

```sh
timoni-modules/apps/example-service/dev main ✗ ❯ timoni bundle apply -f bundle.cue
3:38PM INF b:podinfo-example-service > applying 1 instance(s)
3:38PM INF b:podinfo-example-service > i:podinfo > applying module timoni.sh/app-template version 0.0.1
3:38PM INF b:podinfo-example-service > i:podinfo > installing podinfo in namespace default
3:38PM INF b:podinfo-example-service > i:podinfo > ServiceAccount/default/podinfo created
3:38PM INF b:podinfo-example-service > i:podinfo > ConfigMap/default/podinfo-5a88c99a created
3:38PM INF b:podinfo-example-service > i:podinfo > Service/default/podinfo created
3:38PM INF b:podinfo-example-service > i:podinfo > Deployment/default/podinfo created
3:38PM INF b:podinfo-example-service > i:podinfo > app resources ready
3:38PM INF b:podinfo-example-service > applied successfully in 8s
```

```sh
timoni bundle delete -f bundle.cue
```