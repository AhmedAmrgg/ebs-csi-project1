
module EKS {
  source = "../../modules/EKS"
 
  environment = var.environment
  cluster_name = var.cluster_name
  aws_region = var.aws_region
  subnet_ids   = module.Network.public_subnets # ✅ الحل هنا
  private_subnets = module.Network.private_subnets
  public_subnets  = module.Network.public_subnets
  
}
 


module Network {
  source = "../../modules/Network"


  
  vpc_cidr_block = var.vpc_cidr_block
  vpc_availability_zones = var.vpc_availability_zones  # ✅
  subnet_ids = module.Network.public_subnets

  
}
 


module sampleapp {
  source = "../../modules/sampleapp"



}
 
data "aws_eks_cluster_auth" "eks_cluster" {
  name = module.EKS.cluster_name
}

module "ebs-terraform" {
  source = "./modules/ebs-terraform"
 

  cluster_name     = module.EKS.cluster_name
  cluster_endpoint = module.EKS.cluster_endpoint
  cluster_ca       = module.EKS.cluster_ca
  cluster_token    = data.aws_eks_cluster_auth.eks_cluster.token.
  
  depends_on = [module.EKS]
}
