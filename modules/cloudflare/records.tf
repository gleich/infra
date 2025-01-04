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

resource "cloudflare_record" "root_mail_spf" {
  zone_id = var.zone_id
  type    = "TXT"
  name    = "@"
  content = "v=spf1 include:spf.improvmx.com ~all"
  ttl     = 1
}

##################
# VERCEL RECORDS #
##################

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

##################
# SERVER RECORDS #
##################

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
