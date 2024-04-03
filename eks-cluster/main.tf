module "eks_cluster" {
  source                = "terraform-aws-modules/eks/aws"
  cluster_name          = var.cluster_name
  cluster_version       = var.cluster_version
  subnet_ids            = var.subnets
  vpc_id                = var.vpc_id
}
