resource "random_id" "suffix" {
  byte_length = 4
}

resource "aws_s3_bucket" "baseline" {
  bucket = "${var.bucket_prefix}-${var.environment}-${random_id.suffix.hex}"
}

resource "aws_s3_bucket_public_access_block" "baseline" {
  bucket                  = aws_s3_bucket.baseline.id
  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}

resource "aws_s3_bucket_versioning" "baseline" {
  bucket = aws_s3_bucket.baseline.id

  versioning_configuration {
    status = "Enabled"
  }
}