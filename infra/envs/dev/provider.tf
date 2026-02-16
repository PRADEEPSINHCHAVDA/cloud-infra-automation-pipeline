provider "aws" {
  region = var.region

  default_tags {
    tags = {
      Project     = "cloud-infra-automation-pipeline"
      Environment = var.environment
      ManagedBy   = "Terraform"
    }
  }
}