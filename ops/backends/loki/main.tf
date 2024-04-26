resource "helm_release" "grafana-loki" {
  name             = "loki"
  repository       = "https://grafana.github.io/helm-charts"
  chart            = "loki-stack"
  version          = "2.9.11"
  namespace        = "loki-system"
  create_namespace = true
  values           = [ file("manifests/loki-values.yaml") ]
}