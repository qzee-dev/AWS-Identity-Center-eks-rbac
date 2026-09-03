resource "aws_eks_access_entry" "devops" {

  cluster_name  = var.cluster_name

  principal_arn = var.devops_role_arn

  type = "STANDARD"
}
