resource "cloudflare_record" "root" {
  zone_id = var.zone_id
  type    = "CNAME"
  name    = "@"
  content = var.addresses.vercel
  ttl     = 1
}

resource "cloudflare_record" "www" {
  zone_id = var.zone_id
  type    = "CNAME"
  name    = "www"
  content = var.addresses.vercel
  ttl     = 1
}
