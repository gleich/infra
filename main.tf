terraform {
  required_providers {
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "~> 4.0"
    }
  }
}

provider "cloudflare" {
  api_token = var.cloudflare_api_token
}

module "mattgleich_dns" {
  source  = "./modules/dns"
  zone_id = "b580b7998284e872e4e6d3a33aac00a8"
}

module "mattgleich_com_dns" {
  source  = "./modules/dns"
  zone_id = "0321ab5a32959ab44e02ba727bae8106"
}
