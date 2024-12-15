terraform {
  required_providers {
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "~> 4.0"
    }
    vercel = {
      source  = "vercel/vercel"
      version = "~> 2.0"
    }
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "~> 2.0"
    }
    github = {
      source  = "integrations/github"
      version = "~> 6.0"
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

provider "github" {
  token = var.github_api_token
}

module "mattgleich_dns" {
  source  = "./modules/cloudflare"
  zone_id = "b580b7998284e872e4e6d3a33aac00a8"
}

module "mattgleich_com_dns" {
  source  = "./modules/cloudflare"
  zone_id = "0321ab5a32959ab44e02ba727bae8106"
}

module "vercel" {
  source = "./modules/vercel"
}

module "digitalocean" {
  source = "./modules/digitalocean"
}

module "github" {
  source = "./modules/github"
}
