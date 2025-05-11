locals {
  mattgleich_com_zone = "b580b7998284e872e4e6d3a33aac00a8"
}

# ++++++++++++++++
# CLOUDFLARE RULES
# ++++++++++++++++

resource "cloudflare_dns_record" "mattgleich_com_wildcard" {
  content = cloudflare_address
  name    = "*.mattgleich.com"
  proxied = true
  ttl     = 1
  type    = "A"
  zone_id = local.mattgleich_com_zone
}

resource "cloudflare_dns_record" "mattgleich_com_root" {
  content = cloudflare_address
  name    = "mattgleich.com"
  proxied = true
  ttl     = 1
  type    = "A"
  zone_id = local.mattgleich_com_zone
}

# +++++
# EMAIL
# +++++

resource "cloudflare_dns_record" "mattgleich_com_mail" {
  content  = "mx1.improvmx.com"
  name     = "mattgleich.com"
  priority = 10
  proxied  = false
  ttl      = 1
  type     = "MX"
  zone_id  = local.mattgleich_com_zone
}

resource "cloudflare_dns_record" "mattgleich_com_mail_backup" {
  content  = "mx2.improvmx.com"
  name     = "mattgleich.com"
  priority = 20
  proxied  = false
  ttl      = 1
  type     = "MX"
  zone_id  = local.mattgleich_com_zone
}

resource "cloudflare_dns_record" "mattgleich_com_mail_spf" {
  content = "\"v=spf1 include:spf.improvmx.com ~all\""
  name    = "mattgleich.com"
  proxied = false
  ttl     = 1
  type    = "TXT"
  zone_id = local.mattgleich_com_zone
}
