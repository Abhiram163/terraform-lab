# main.tf

# Tell Terraform about the Docker provider
terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0"
    }
  }
}

# Configure the Docker provider
# This connects Terraform to your local Docker installation
provider "docker" {}

# Pull the nginx Docker image
# This is like running: docker pull nginx
resource "docker_image" "nginx" {
  name         = var.image_name
  keep_locally = false    # Delete image when destroyed
}

# Create a Docker container using the pulled image
# This is like running: docker run -d -p 8080:80 nginx
resource "docker_container" "nginx_container" {
  name  = var.container_name
  image = docker_image.nginx.image_id

  # Map ports: host_port:container_port
  ports {
    internal = 80      # Port inside the container (nginx listens here)
    external = var.host_port  # Port on your computer
  }
}
