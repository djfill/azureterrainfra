variable "resource_group" {
  default = "phils"
}

variable "environment" {
  default = "dev"
}

variable "location" {
  default = "uksouth"
}

variable "costcenter" {
  default = "IT"
}

locals {
  prefix = "${var.environment}-${var.location}"
  tags = {
    map(
      "Terraform" = true,
      "Costcenter", "${var.costcenter}",
      "Environment", "${var.environment}"
    )
  }
}
