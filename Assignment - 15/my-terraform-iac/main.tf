terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "2.4.0"
    }
  }
}

resource "local_file" "my_example_file" {
  filename = "${path.module}/example.txt"
  content = "Hello, Terraform IaC! Updated successfully."
}