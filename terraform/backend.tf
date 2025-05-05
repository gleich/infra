terraform {
  backend "s3" {
    bucket = "terraform"
    key    = "state.tfstate"
    endpoints = {
      s3 = "https://minio-api.dev.mattglei.ch"
    }

    region                      = "main"
    skip_credentials_validation = true
    skip_requesting_account_id  = true
    skip_metadata_api_check     = true
    skip_region_validation      = true
    use_path_style              = true
  }
}
