bundle: {
    apiVersion: "v1alpha1"
    name:       "podinfo-example-service"
    instances: {
        podinfo: {
            module: url:     "oci://ghcr.io/duyhenryer/timoni-modules/app-template"
            module: version: "latest"
            namespace: "default"
        }
    }
}