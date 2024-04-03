terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "ap-southeast-1"
}

module "eks_cluster" {
  source           = "./eks-cluster"
  cluster_name     = "gideons_cluster"
  cluster_version  = "1.24"  # Specify your desired EKS version
  subnets          = ["subnet-0628c7ce75048a5b5", "subnet-03c6c0adeffcfe90f"]  # Replace with your subnet IDs
  vpc_id           = "vpc-0d870d7c497bbc736"  # Replace with your VPC ID
}

module "kubernetes_deployment" {
  source                = "./kubernetes-deployment"
  cluster_id            = module.eks_cluster.cluster_id
  kubeconfig            = module.eks_cluster.kubeconfig
  deployment_yaml_path  = "./kubernetes-deployment/deployment.yaml"  # Replace with the path to your deployment.yaml file
  depends_on = [module.eks_cluster]
}
