variable "environment" {
  description = "Environment name (dev/staging/prod)"
  type        = string
}

variable "bucket_prefix" {
  description = "Prefix for test bucket"
  type        = string
  default     = "pradeep-infra-test"
}