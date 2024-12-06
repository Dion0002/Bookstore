output "cluster_role_arn" {
  description = "IAM Role ARN for the EKS Cluster"
  value       = aws_iam_role.cluster.arn
}

output "node_role_arn" {
  description = "IAM Role ARN for the worker nodes"
  value       = aws_iam_role.node.arn
}

output "dependent_roles_attachments" {
  description = "Policy attachments for dependency management"
  value = [
    aws_iam_role_policy_attachment.cluster_AmazonEKSClusterPolicy,
  ]
}

output "common_security_group_id" {
  description = "The Security Group ID to be used by other services"
  value       = aws_security_group.common_sg.id
}