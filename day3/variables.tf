# variables.tf

variable "container_name" {
  description = "Name for the Docker container"
  type        = string
  default     = "nginx-terraform"
}

variable "image_name" {
  description = "Docker image to use"
  type        = string
  default     = "nginx:latest"
}

variable "host_port" {
  description = "Port on the host machine to map to container port 80"
  type        = number
  default     = 8080
}
