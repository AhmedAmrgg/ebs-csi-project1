# # Terraform Settings Block
# terraform {
#   required_version = ">= 1.0.0"
#   required_providers {
#     aws = {
#       source = "hashicorp/aws"
#       # version = "~> 6.8.0"
#      }
#     kubernetes = {
#       source  = "hashicorp/kubernetes"
#       version = "~> 2.7.1"
#     }     
#   }
  # # Adding Backend as S3 for Remote State Storage
  # backend "s3" {
  #   bucket = "terraform-on-aws-eks-amora"
  #   key    = "dev/dev-ebs-sampleapp-demo/terraform.tfstate"
  #   region = "us-east-1" 

  #   encrypt = true  
  # }    
}