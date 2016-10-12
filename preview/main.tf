provider "aws" {
  region = "us-west-2"
}

module "s3-site" {
  source = "git::git@github.com:mstbbs/rivaltigers-inf-modules.git//s3-site?ref=preview"
  bucket_name = "preview.${var.domain_name}"
}
