variable "cluster_name" {
  description = "Name of the EKS cluster"
}

variable "cluster_version" {
  description = "Version of the EKS cluster"
}

variable "subnets" {
  type        = list(string)
  description = "List of subnet IDs for the EKS cluster"
}

variable "vpc_id" {
  description = "ID of the VPC for the EKS cluster"
}
