terraform {
  required_providers {
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "~> 4.0"
    }
  }
}

module "mattgleich_dns" {
  source  = "./personal"
  zone_id = var.mattgleich_zone_id
}

module "mattgleich_com_dns" {
  source  = "./personal"
  zone_id = var.mattgleich_com_zone_id
}

module "coverframe_dev_dns" {
  source  = "./coverframe"
  zone_id = "273ba96ea009fff540bf1809d0cfdda8"
}

module "coverframe_shop_dns" {
  source  = "./coverframe"
  zone_id = "bacf7227ff8abdbb5e44310d60fd6ffe"
}
