output "instance_id" {
  description = "Get IP Address"
  value       = length(aws_instance.public) > 0 ? aws_instance.public[0].public_ip : ""
}