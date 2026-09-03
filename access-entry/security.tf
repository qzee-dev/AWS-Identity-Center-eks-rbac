resource "aws_eks_access_entry" "security" {

  cluster_name  = var.cluster_name
  principal_arn = var.security_role_arn

  kubernetes_groups = [
    "security-team"
  ]

  type = "STANDARD"
}

resource "aws_eks_access_policy_association" "security" {

  cluster_name = var.cluster_name

  principal_arn = var.security_role_arn

  policy_arn = "arn:aws:eks::aws:cluster-access-policy/AmazonEKSViewPolicy"

  access_scope {
    type = "cluster"
  }
}
