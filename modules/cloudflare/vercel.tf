resource "cloudflare_record" "root" {
  zone_id = var.zone_id
  type    = "A"
  name    = "@"
  content = var.addresses.vercel
  ttl     = 1
}

resource "cloudflare_record" "www" {
  zone_id = var.zone_id
  type    = "CNAME"
  name    = "www"
  content = "cname.vercel-dns.com."
  ttl     = 1
}

resource "cloudflare_record" "blackbird" {
  zone_id = var.zone_id
  type    = "A"
  name    = "blackbird"
  content = var.addresses.vercel
  ttl     = 1
}
