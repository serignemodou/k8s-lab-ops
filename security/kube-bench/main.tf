resource "helm_release" "gov-bench" {
  name             = "kube-bench"
  repository       = "https://charts.deliveryhero.io/"
  chart            = "deliveryhero"
  version          = "0.7.1"
  namespace        = "kube-bench-system"
  create_namespace = true
  values           = [ file("manifests/kube-bench-values.yaml") ]
}