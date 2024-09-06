provider "aws" {
  region     = "eu-north-1"
  access_key = "AKIASVQKHRGUMYTSRRWZ"
  secret_key = "Db2vVhIPfsj9hRzFsIjQURptmoisfTCeuWs3kdHO"
}

resource "aws_s3_bucket" "example" {
  bucket = "testbucketpp1"
  
  # Object lock configuration (must be enabled for compliance)
  object_lock_configuration {
    object_lock_enabled = "Enabled"
  }

  tags = {
    Name        = "Sentinel Bucket"
    Environment = "Production"
  }
}

output "bucket_name" {
  value = aws_s3_bucket.example.bucket
}
