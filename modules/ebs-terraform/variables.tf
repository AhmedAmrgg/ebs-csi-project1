# Input Variables - Placeholder file
# AWS Region
variable "aws_region" {
  description = "Region in which AWS Resources to be created"
  type = string
  default = "us-east-1"  
}
# Environment Variable
variable "environment" {
  description = "Environment Variable used as a prefix"
  type = string
  default = "dev"
}
# Business Division
variable "business_divsion" {
  description = "Business Division in the large organization this Infrastructure belongs"
  type = string
  default = "SAP"
}

#   variable "cluster_name" {
#   type = string
# }

# modules/ebs-terraform/variables.tf
variable "cluster_name" {
  type = string
}
variable "cluster_endpoint" {
  type = string
}
variable "cluster_ca" {
  type = string
}

variable "cluster_token" {
  type = string
}

variable "oidc_provider_arn" {
  type = string
}

variable "oidc_provider_url" {
  type = string
}
