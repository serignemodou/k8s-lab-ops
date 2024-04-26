resource "helm_release" "gov-kyverno" {
  name             = "kyverno"
  repository       = "https://kyverno.github.io/kyverno/"
  chart            = "kyverno"
  version          = "3.0.9"
  namespace        = "kuverno-system"
  create_namespace = true
  values           = [ file("manifests/kyverno-values.yaml") ]
}