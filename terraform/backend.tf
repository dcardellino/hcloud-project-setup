terraform {
  backend "s3" {
    skip_credentials_validation = true
    skip_metadata_api_check     = true
    skip_region_validation      = true
    endpoint                    = "s3.us-west-002.backblazeb2.com"  # this region is found on your bucket page
    region                      = "us-west-004"                     # meaningless, but the provider needs it. It can be any string
    bucket                      = "cardellino-tech-terraform-state" # replace this with your bucket name
    key                         = "nat_gateway.tfstate"             # replace this with your state file name (e.g. terraform.tfstate)
  }
}

