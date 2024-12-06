output "eks_cluster_arn" {
  description = "ARN of the EKS Cluster"
  value       = aws_eks_cluster.eks.arn
}

output "eks_cluster_endpoint" {
  description = "Endpoint of the EKS Cluster"
  value       = aws_eks_cluster.eks.endpoint
}

output "eks_node_group_name" {
  description = "Name of the EKS Node Group"
  value       = aws_eks_node_group.node_group.node_group_name
}

output "ecr_repository_url" {
  value = aws_ecr_repository.ecr_repository.repository_url
}