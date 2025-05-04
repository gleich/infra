terraform {
  required_providers {
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "~> 5"
    }
    vercel = {
      source  = "vercel/vercel"
      version = "~> 2.0"
    }
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "~> 2.0"
    }
  }
}

provider "cloudflare" {
  api_token = var.cloudflare_api_token
}

provider "vercel" {
  api_token = var.vercel_api_token
}

provider "digitalocean" {
  token = var.digitalocean_api_token
}

module "cloudflare" {
  source = "./modules/cloudflare"
}

module "vercel" {
  source = "./modules/vercel"
}

module "digitalocean" {
  source = "./modules/digitalocean"
}
