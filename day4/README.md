This assignment demonstrates Terraform Modules.

Steps performed:

1. Created a reusable Terraform module for Docker containers.
2. Defined module variables for container name, port, and image.
3. Moved container creation logic into the module.
4. Called the module twice from the root configuration.
5. Deployed two NGINX containers running on different ports.

Containers created:

web1 → http://localhost:8081 
web2 → http://localhost:8082
