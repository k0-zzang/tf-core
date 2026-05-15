terraform {
  required_version = ">=1.14.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }

  backend "s3" {
      # 자기한테 맞게 설정
      bucket       = "tf-core-tfsate"
      key          = "04.03/lab12/terraform.tfstate"
      region       = "ap-northeast-2"
      encrypt      = true
      use_lockfile = true
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