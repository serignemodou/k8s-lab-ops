resource "helm_release" "sec-neuvector" {
  name             = "neuvecto"
  repository       = "https://neuvector.github.io/neuvector-helm/"
  chart            = "core"
  version          = "2.7.6"
  namespace        = "neuvector-system"
  create_namespace = true
  values           = [ file("manifests/neuvector-values.yaml") ]
}