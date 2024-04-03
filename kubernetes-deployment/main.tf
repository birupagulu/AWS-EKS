terraform {
  required_version = ">= 0.13"

  required_providers {
    kubectl = {
      source  = "gavinbunney/kubectl"
      version = ">= 1.7.0"
    }
  }
}

resource "kubectl_manifest" "deployment" {
  yaml_body = file("${path.module}/deployment.yaml")
  depends_on = [module.eks_cluster]
}
