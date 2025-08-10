# Terraform Settings Block
terraform {
  required_version = ">= 1.6.0"
  required_providers {
    aws = {
      source = "hashicorp/aws"
      #version = ">= 4.65"
      # version = ">= 6.8.0"
     }
    helm = {
      source = "hashicorp/helm"
      #version = "2.4.1"
      #version = "~> 2.4"
      version = "~> 3.0.2"
    }
    # http = {
    #   source = "hashicorp/http"
    #   #version = "2.1.0"
    #   #version = "~> 2.1"
    #   version = "~> 3.3"
    # }
  }
  # # Adding Backend as S3 for Remote State Storage
  # backend "s3" {
  #   bucket = "terraform-on-aws-eks-amora"
  #   key    = "dev/ebs-storage/terraform.tfstate"
  #   region = "us-east-1" 

  #   encrypt = true 
  # }     
}

# Terraform AWS Provider Block
provider "aws" {
  region = var.aws_region
}

# # Terraform HTTP Provider Block
# provider "http" {
#   # Configuration options
# }