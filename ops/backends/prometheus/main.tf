resource "helm_release" "prometheus" {
  name             = "prometheus"
  repository       = "https://prometheus-community.github.io/helm-charts"
  chart            = "kube-prometheus-stack"
  version          = "51.9.4"
  namespace        = "prometheus-system"
  create_namespace = true
  values           = [ file("manifests/prometheus-values.yaml") ]
}