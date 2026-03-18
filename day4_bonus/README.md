# Day 4 Bonus – Dynamic Infrastructure Creation using Terraform

## Objective

The objective of this implementation is to dynamically create multiple Docker containers using Terraform expressions instead of manually defining each resource.

---

## Overview

In this implementation, Terraform is used to create multiple nginx containers based on a list of configurations provided as input.

Instead of writing separate resource blocks for each container, a single resource block is used along with the `for_each` expression to automatically generate containers.

---

## Key Concepts Used

- Terraform for_each
- Dynamic resource creation
- Variables and tfvars
- Docker provider

---

## Implementation Details

A variable named `container_config` is defined, which contains a list of container configurations. Each configuration includes:

- Container name
- Port number

Terraform iterates over this list and creates one container per configuration.

---

## Example Configuration

container_config = [
  {
    name = "web1_bonus"
    port = 8081
  },
  {
    name = "web2_bonus"
    port = 8082
  },
  {
    name = "web3_bonus"
    port = 8083
  }
]

---

## Output

The containers are accessible at:

http://localhost:8081  
http://localhost:8082  
http://localhost:8083  

Terraform also generates an output list of URLs:

container_urls = [
  "http://localhost:8081",
  "http://localhost:8082",
  "http://localhost:8083"
]

---

## Advantages

- Eliminates code duplication
- Improves scalability
- Simplifies infrastructure management
- Easily extendable by adding new entries

---

## Conclusion

This implementation demonstrates how Terraform can dynamically generate infrastructure using loops and expressions, making it highly efficient and suitable for real-world scalable deployments.
