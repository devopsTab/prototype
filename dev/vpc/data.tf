data "aws_eks_cluster" "cluster" {
  name = module.eks_blueprints.eks_cluster_id
}

data "aws_eks_cluster_auth" "this" {
  name = module.eks_blueprints.eks_cluster_id
}

data "aws_caller_identity" "current" {}

# # To Authenticate with ECR Public in us-east-1
# data "aws_ecrpublic_authorization_token" "token" {
#   provider = aws.virginia
# }
