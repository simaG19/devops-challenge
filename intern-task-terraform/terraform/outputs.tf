output "instance_public_ip" {
  description = "Public IP address of the application instance."
  value       = aws_instance.app.public_ip
}

output "app_port" {
  description = "TCP port on which the application listens."
  value       = local.app_port
}
