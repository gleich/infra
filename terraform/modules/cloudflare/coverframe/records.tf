resource "cloudflare_record" "root" {
  zone_id = var.zone_id
  type    = "A"
  name    = "@"
  content = var.addresses.vercel
  ttl     = 1
}

resource "cloudflare_record" "www" {
  zone_id = var.zone_id
  type    = "A"
  name    = "www"
  content = var.addresses.vercel
  ttl     = 1
}
