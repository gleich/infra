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

resource "cloudflare_record" "svg_animation_tester" {
  zone_id = var.zone_id
  type    = "A"
  name    = "svg-animation-tester"
  content = var.addresses.vercel
  ttl     = 1
}

resource "cloudflare_record" "blackbird" {
  zone_id = var.zone_id
  type    = "A"
  name    = "blackbird"
  content = var.addresses.vercel
  ttl     = 1
}

resource "cloudflare_record" "feynman_project" {
  zone_id = var.zone_id
  type    = "A"
  name    = "feynman-project"
  content = var.addresses.vercel
  ttl     = 1
}

resource "cloudflare_record" "javelin" {
  zone_id = var.zone_id
  type    = "A"
  name    = "javelin"
  content = var.addresses.vercel
  ttl     = 1
}

resource "cloudflare_record" "grad" {
  zone_id = var.zone_id
  type    = "A"
  name    = "grad"
  content = var.addresses.vercel
  ttl     = 1
}

resource "cloudflare_record" "v2" {
  zone_id = var.zone_id
  type    = "A"
  name    = "v2"
  content = var.addresses.vercel
  ttl     = 1
}
