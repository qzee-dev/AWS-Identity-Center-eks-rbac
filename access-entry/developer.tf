resource "aws_eks_access_entry" "developer" {

  cluster_name  = var.cluster_name

  principal_arn = var.developer_role_arn

  type = "STANDARD"
}
