terraform {
  backend "s3" {
    bucket = "dsop-bucket-dev-001" # CHANGE WITH YOUR S3 BUCKET
    key    = "K8inEKS/terraform.tfstate"
    region = "eu-west-2"
  }
}
