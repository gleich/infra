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


module "dns" {
  source = "./modules/dns"
  zone_ids = {
    mattgleich     = "b580b7998284e872e4e6d3a33aac00a8"
    mattgleich_com = "0321ab5a32959ab44e02ba727bae8106"
  }
  addresses = {
    vercel = "76.76.21.21"
    server = "198.199.69.145"
  }
}
