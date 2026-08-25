module "cloudflare" {
  source = "./cloudflare"
}

removed {
  from = module.hetzner

  lifecycle {
    destroy = false
  }
}
