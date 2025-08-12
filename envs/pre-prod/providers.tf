terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.7.0"
    }
    helm = {
      source = "hashicorp/helm"
      #version = "2.4.1"
      #version = "~> 2.4"
      version = "~> 3.0.0"
    }    
  }
}

provider "aws" {
  region = var.aws_region
}

# provider "kubernetes" {
#   host = data.terraform_remote_state.eks.outputs.cluster_endpoint 
#   cluster_ca_certificate = base64decode(data.terraform_remote_state.eks.outputs.cluster_certificate_authority_data)
#   token = data.aws_eks_cluster_auth.cluster.token
# }
