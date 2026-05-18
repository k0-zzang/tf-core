terraform {
  required_version = ">= 1.14.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }

  backend "s3" {
    bucket       = "tf-core-tfsate"
    key          = "04.03/lab12/terraform.tfsate"
    region       = "ap-northeast-2"
    encrypt      = true
    use_lockfile = true # false를 true로 변경하면 락거림
  }
}

provider "aws" {
  region = "ap-northeast-2"

  default_tags {
    tags = {
      Organization = local.org
      Project      = local.project
      ManagedBy    = "Terraform"
    }
  }
}