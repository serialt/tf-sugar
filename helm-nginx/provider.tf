provider "helm" {
  kubernetes {
    config_path = "~/.kube/kubeconfig-local.json"
  }
}
