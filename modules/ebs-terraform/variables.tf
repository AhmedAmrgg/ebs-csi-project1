# modules/ebs-terraform/variables.tf
variable "cluster_name" {
  description = "Name of the EKS cluster. Also used as a prefix in names of related resources."
  type        = string
  default     = "eksdemo"
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
 
 variable "cluster_dependency" {}
