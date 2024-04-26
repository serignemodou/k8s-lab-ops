resource "helm_release" "otel-collector" {
  name             = "otel-collector"
  repository       = "https://open-telemetry.github.io/opentelemetry-helm-charts"
  chart            = "opentelemetry-collector"
  version          = "0.72.0"
  namespace        = "otel-system"
  create_namespace = true
  values = [ file("manifests/otel-values.yaml") ]
  set {
    name   = "mode"
    value  = "deployment"
  }
}