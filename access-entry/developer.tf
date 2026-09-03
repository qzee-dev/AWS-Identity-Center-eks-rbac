resource "aws_eks_access_entry" "developer" {

  cluster_name  = var.cluster_name

  principal_arn = var.developer_role_arn

  kubernetes_groups = [
    "developer"
  ] 

  type = "STANDARD"
}


resource "aws_eks_access_policy_association" "developer" {

  cluster_name = var.cluster_name

  principal_arn = var.developer_role_arn

  policy_arn = "arn:aws:eks::aws:cluster-access-policy/AmazonEKSViewPolicy"

  access_scope {
    type = "cluster"
  }
}
``
