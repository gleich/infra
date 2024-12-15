resource "cloudflare_record" "root" {
  zone_id = var.zone_id
  type    = "A"
  name    = "@"
  content = var.addresses.vercel
  ttl     = 1
}

resource "cloudflare_record" "root_mail_main" {
  zone_id  = var.zone_id
  type     = "MX"
  name     = "@"
  content  = "mx1.improvmx.com."
  priority = 10
  ttl      = 1
}

resource "cloudflare_record" "root_mail_backup" {
  zone_id  = var.zone_id
  type     = "MX"
  name     = "@"
  content  = "mx2.improvmx.com."
  priority = 20
  ttl      = 1
}

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

resource "cloudflare_record" "terminal" {
  zone_id = var.zone_id
  type    = "A"
  name    = "terminal"
  content = var.addresses.server
  ttl     = 1
}
