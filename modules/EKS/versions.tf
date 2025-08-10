terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
 
#   # Adding Backend as S3 for Remote State Storage
#   backend "s3" {
#     bucket = "terraform-on-aws-eks-amora"
#     key    = "dev/eks-cluster/terraform.tfstate"
#     region = "us-east-1" 
 
#     # For State Locking
#     dynamodb_table = "dev-eks-irsa-demo"    
#   }  
}
 }


# Configure the AWS Provider
provider "aws" {
  region = var.aws_region
}
# }
#  }