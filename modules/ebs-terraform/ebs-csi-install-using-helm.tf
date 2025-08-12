# Install EBS CSI Driver using HELM
# Resource: Helm Release 
resource "helm_release" "ebs_csi_driver" {
  depends_on = [aws_iam_role.ebs_csi_iam_role]
  name       = "aws-ebs-csi-driver-v"
  repository = "https://kubernetes-sigs.github.io/aws-ebs-csi-driver"
  chart      = "aws-ebs-csi-driver"
  namespace = "kube-system"     

  set = [
  {
    name = "image.repository"
    value = "602401143452.dkr.ecr.us-east-1.amazonaws.com/eks/aws-ebs-csi-driver" # Changes based on Region - This is for us-east-1 Additional Reference: https://docs.aws.amazon.com/eks/latest/userguide/add-ons-images.html
  },     

  {
    name  = "controller.serviceAccount.create"
    value = "true"
  },

  {
    name  = "controller.serviceAccount.name"
    value = "ebs-csi-controller-sa"
  },

  {
    name  = "controller.serviceAccount.annotations.eks\\.amazonaws\\.com/role-arn"
    value = "${aws_iam_role.ebs_csi_iam_role.arn}"
  }
  ]   
}

# resource "helm_release" "ebs_csi_driver" {
#   name       = "aws-ebs-csi-driver"
#   repository = "https://kubernetes-sigs.github.io/aws-ebs-csi-driver"
#   chart      = "aws-ebs-csi-driver"
#   namespace  = "kube-system"

#   set = [
#     {
#       name  = "controller.serviceAccount.create"
#       value = "false"
#     },
#     {
#       name  = "controller.serviceAccount.name"
#       value = "ebs-csi-controller-sa"
#     },
#     {
#       name  = "enableVolumeResizing"
#       value = "true"
#     },
#     {
#       name  = "enableVolumeSnapshot"
#       value = "true"
#     }
#   ]
# }


# resource "helm_release" "ebs_csi_driver" {
#   name       = "aws-ebs-csi-driver"
#   depends_on = [aws_iam_role.ebs_csi_iam_role]
#   repository = "https://kubernetes-sigs.github.io/aws-ebs-csi-driver"
#   chart      = "aws-ebs-csi-driver"
#   namespace  = "kube-system"
#   version    = "2.27.0" # أو أي نسخة مناسبة

#   set = [
#     {
#       name  = "controller.serviceAccount.create"
#       value = "false"
#     },
#     {
#       name  = "controller.serviceAccount.name"
#       value = "ebs-csi-controller-sa"
#     }
#   ]
# }
