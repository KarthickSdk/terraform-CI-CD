terraform {
  backend "s3" {
    bucket         = "mytest-s3-sdk1"   # Replace with your S3 bucket name
    key            = "terraform.tfstate"        # Path to your state file in the bucket
    region         = "us-east-1"                             # Replace with your AWS region
    encrypt        = true
  }
}