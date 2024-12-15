resource "cloudflare_record" "dev_wildcard" {
  zone_id = var.zone_id
  type    = "A"
  name    = "*.dev"
  content = var.addresses.server
  ttl     = 1
}

resource "cloudflare_record" "dev" {
  zone_id = var.zone_id
  type    = "A"
  name    = "dev"
  content = var.addresses.server
  ttl     = 1
}

resource "cloudflare_record" "terminal" {
  zone_id = var.zone_id
  type    = "A"
  name    = "terminal"
  content = var.addresses.server
  ttl     = 1
}
