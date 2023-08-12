resource "helm_release" "nginx" {
  name = "nginx-test"

  repository = "https://charts.bitnami.com/bitnami"
  chart      = "nginx"
  version    = "13.2.20"
  namespace  = "imau"

  set {
    name  = "service.type"
    value = "ClusterIP"

  }

  set {
    name  = "replicaCount"
    value = 2
  }
}
