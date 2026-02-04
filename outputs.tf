output "vpc_id" {
  description = "VPC ID"
  value       = aws_vpc.main.id
}

output "public_instance_ip" {
  description = "Public IP of EC2 instance"
  value       = aws_instance.public_instance.public_ip
}

output "private_instance_id" {
  description = "Private instance ID (if deployed)"
  value       = var.deploy_private_instance ? aws_instance.private_instance[0].id : null
}

output "public_subnet_ids" {
  description = "Public subnet IDs"
  value       = [aws_subnet.public_1.id, aws_subnet.public_2.id]
}

output "private_subnet_id" {
  description = "Private subnet ID"
  value       = aws_subnet.private_1.id
}

output "workflow_type" {
  description = "Workflow type"
  value       = "VCS-Driven"
}