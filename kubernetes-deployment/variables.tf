variable "cluster_id" {
  description = "ID of the EKS cluster"
}

variable "kubeconfig" {
  description = "Kubeconfig for the EKS cluster"
}

variable "deployment_yaml_path" {
  description = "Path to the Kubernetes Deployment YAML file"
}
