resource "aws_eks_access_entry" "security" {

  cluster_name  = var.cluster_name

  principal_arn = var.security_role_arn

  type = "STANDARD"
}
