module "inner_s3_module" {
  source  = "../module2"
  bucket2 = var.bucket
  acl     = var.acl
}

resource "aws_s3_bucket" "example2" {
  bucket = "example2"
  acl    = var.acl
  tags = {
    git_org = "YaaraVerner"
  }
}
