variable "region" {
  type        = string
  default     = "us-east-1"
  description = "AWS region"
}

variable "environment" {
  type        = string
  default     = "staging"
  description = "Environment name"
}

variable "bucket_prefix" {
  type        = string
  default     = "pradeep-infra-test"
  description = "Prefix for baseline test bucket"
}