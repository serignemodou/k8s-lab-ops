terraform {
  required_providers {
    helm = {
      source = "hashicorp/helm"
      version = "2.11.0"
    }
    kubernetes = {
      source = "hashicorp/kubernetes"
      version = "2.23.0"
    }
  }
  required_version = ">= 0.13"
}

provider "kubernetes" {
  config_path    = "#{KUBE_CONFIG_PATH}#"
  config_context = "minikube"
}