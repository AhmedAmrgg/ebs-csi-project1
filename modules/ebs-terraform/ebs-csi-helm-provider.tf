# data "aws_eks_cluster" "eks_cluster" {
#   name = module.EKS.cluster_name
# }

# data "aws_eks_cluster_auth" "eks_cluster" {
#   name = module.EKS.cluster_name
# }

# provider "helm" {
#   kubernetes {
#     host                   = data.aws_eks_cluster.eks_cluster.endpoint
#     cluster_ca_certificate = base64decode(data.aws_eks_cluster.eks_cluster.certificate_authority[0].data)
#     token                  = data.aws_eks_cluster_auth.eks_cluster.token
#   }
# }

data "aws_eks_cluster" "eks_cluster" {
  name = var.cluster_name
}

data "aws_eks_cluster_auth" "eks_cluster" {
  name = var.cluster_name
}


# provider "kubernetes" {
#   host                   = var.cluster_endpoint
#   cluster_ca_certificate = base64decode(var.cluster_ca)
#   token                  = var.cluster_token
# }

provider "helm" {
  kubernetes = {
    host                   = var.cluster_endpoint
    cluster_ca_certificate = base64decode(var.cluster_ca)
    token                  = var.cluster_token
  }
}
