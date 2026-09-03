resource "aws_eks_access_entry" "devops" {

  cluster_name  = var.cluster_name
  principal_arn = var.devops_role_arn

  kubernetes_groups = [
    "devops-team"
  ]

  type = "STANDARD"
}


resource "aws_eks_access_policy_association" "devops" {

  cluster_name = var.cluster_name

  principal_arn = var.devops_role_arn

  policy_arn = "arn:aws:eks::aws:cluster-access-policy/AmazonEKSClusterAdminPolicy"

  access_scope {
    type = "cluster"
  }
}
