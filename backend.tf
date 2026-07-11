terraform {
  backend "s3" {
    bucket         = "terraform-state-259851212317"
    key            = "dev/terraform.tfstate"
    region         = "ap-southeast-2"
    dynamodb_table = "terraform-state-lock"
    encrypt        = true
  }
}
