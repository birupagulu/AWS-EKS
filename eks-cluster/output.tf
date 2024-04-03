output "kubeconfig" {
  description = "Kubeconfig for the EKS cluster"
  value       = "module.eks_cluster.kubeconfig"
}

output "cluster_id" {
  description = "ID of the EKS cluster"
  value       = module.eks_cluster.cluster_id
}
