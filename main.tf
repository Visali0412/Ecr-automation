# Setup terraform cloud and workspace
terraform {
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "visali-demo"

    workspaces {
      name = "Ecr-automationdemo"
    }
  }
}

# Setup terraform providers
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.8.0"
    }
  }

  required_version = ">= 1.1.7"
}

# Setup AWS provider
provider "aws" {
  region = var.aws_region
}
