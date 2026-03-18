terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0"
    }
  }
}

provider "docker" {}

resource "docker_container" "containers" {
  for_each = {
    for c in var.container_config : c.name => c
  }

  name  = each.value.name
  image = "nginx:latest"

  ports {
    internal = 80
    external = each.value.port
  }
}

output "container_urls" {
  value = [
    for c in var.container_config :
    "http://localhost:${c.port}"
  ]
}
