terraform {
  backend "s3" {
    bucket         = "backend-test-bucket-laitkor"
    key            = "s3/terraform.tfstate"
    region         = "us-east-1"
  }
}