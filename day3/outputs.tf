# outputs.tf

output "service_url" {
  description = "URL to access the running Nginx service"
  value       = "http://localhost:${var.host_port}"
}

output "container_name" {
  description = "Name of the running container"
  value       = docker_container.nginx_container.name
}

output "container_id" {
  description = "ID of the running container"
  value       = docker_container.nginx_container.id
}
