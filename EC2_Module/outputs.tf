output "ec2_server_instance_ids" {
  value       = aws_instance.ec2_server[*].id
  description = "Instance ID of EC2 Server"
}

output "ec2_server_public_ips" {
  value       = aws_instance.ec2_server[*].public_ip
  description = "Public IPs of EC2 Server"
}