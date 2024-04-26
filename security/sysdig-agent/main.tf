resource "helm_release" "sec-sysdig" {
  name             = "sysdig-agent"
  repository       = "https://charts.sysdig.com"
  chart            = "sysdig"
  version          = "13.1.0"
  namespace        = "sysdig-agent-system"
  create_namespace = true
  values           = [ file("manifests/kyverno-values.yaml") ]
}