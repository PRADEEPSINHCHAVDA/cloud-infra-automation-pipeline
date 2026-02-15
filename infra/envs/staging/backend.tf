terraform {
  backend "s3" {
    bucket         = "pradeep-tf-state-20260215-9523"
    key            = "staging/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-state-lock"
    encrypt        = true
  }
}