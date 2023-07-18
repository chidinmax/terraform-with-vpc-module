# store the terraform state file in s3
terraform {
  backend "s3" {
    bucket  = "chia-tf-state"
    key     = "chia-website"
    region  = "us-east-1"
    profile = "chia"
  }
}
