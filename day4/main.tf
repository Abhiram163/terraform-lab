terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0"
    }
  }
}

provider "docker" {}

module "nginx_container_1" {
  source = "./modules/nginx_container"

  container_name = "web1"
  container_port = 8081
  image_name     = "nginx:latest"
}

module "nginx_container_2" {
  source = "./modules/nginx_container"

  container_name = "web2"
  container_port = 8082
  image_name     = "nginx:latest"
}
