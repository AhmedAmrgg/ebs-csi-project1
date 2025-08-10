terraform {
  backend "s3" {
    bucket         = "terraform-on-aws-eks-amora"
    # dynamodb_table = "lockzone"
    key            = "preprod1/backend.tfstate"
    region         = "us-east-1"

  }
}