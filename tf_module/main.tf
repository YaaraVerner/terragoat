provider "aws" {
  region  = "us-west-2"
}

module "s3_module" {
  source = "./module"

  bucket = aws_s3_bucket.example.id
  acl    = "public-read"
}

module "s3_module_2" {
  source = "./module"

  bucket = aws_s3_bucket.example.id
  acl    = "private"
}

resource "aws_s3_bucket" "example" {
  bucket = "example"
}
