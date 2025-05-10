locals {
  mattgleich_zone = "0321ab5a32959ab44e02ba727bae8106"
}

resource "cloudflare_dns_record" "mattgleich_lab" {
  content = "5.161.73.129"
  name    = "lab.mattglei.ch"
  proxied = false
  ttl     = 1
  type    = "A"
  zone_id = local.mattgleich_zone
}

resource "cloudflare_dns_record" "mattgleich_lab_wildcard" {
  content = "5.161.73.129"
  name    = "*.lab.mattglei.ch"
  proxied = false
  ttl     = 1
  type    = "A"
  zone_id = local.mattgleich_zone
}

resource "cloudflare_dns_record" "mattgleich_dev_wildcard" {
  content = "165.227.89.82"
  name    = "*.dev.mattglei.ch"
  proxied = false
  ttl     = 1
  type    = "A"
  zone_id = local.mattgleich_zone
}

resource "cloudflare_dns_record" "mattgleich_dev" {
  content = "165.227.89.82"
  name    = "dev.mattglei.ch"
  proxied = false
  ttl     = 1
  type    = "A"
  zone_id = local.mattgleich_zone
}

resource "cloudflare_dns_record" "mattgleich_docker" {
  content = "5.161.73.129"
  name    = "docker.mattglei.ch"
  proxied = false
  ttl     = 1
  type    = "A"
  zone_id = local.mattgleich_zone
}

resource "cloudflare_dns_record" "mattgleich_go" {
  content = "165.227.89.82"
  name    = "go.mattglei.ch"
  proxied = false
  ttl     = 1
  type    = "A"
  zone_id = local.mattgleich_zone
}

resource "cloudflare_dns_record" "mattgleich_terminal" {
  content = "165.227.89.82"
  name    = "terminal.mattglei.ch"
  proxied = false
  ttl     = 1
  type    = "A"
  zone_id = local.mattgleich_zone
}

resource "cloudflare_dns_record" "mattgleich_www" {
  content = "192.0.2.1"
  name    = "www.mattglei.ch"
  proxied = true
  ttl     = 1
  type    = "A"
  zone_id = local.mattgleich_zone
}

resource "cloudflare_dns_record" "mattgleich_root" {
  content = "mattglei-ch.pages.dev"
  name    = "mattglei.ch"
  proxied = true
  ttl     = 1
  type    = "CNAME"
  zone_id = local.mattgleich_zone
}

resource "cloudflare_dns_record" "mattgleich_notes" {
  content = "notes-cpl.pages.dev"
  name    = "notes.mattglei.ch"
  proxied = true
  ttl     = 1
  type    = "CNAME"
  zone_id = local.mattgleich_zone
}

resource "cloudflare_dns_record" "mattgleich_pomo" {
  content = "pomo-4wo.pages.dev"
  name    = "pomo.mattglei.ch"
  proxied = true
  ttl     = 1
  type    = "CNAME"
  zone_id = local.mattgleich_zone
}

resource "cloudflare_dns_record" "mattgleich_ui" {
  content = "ui-dg3.pages.dev"
  name    = "ui.mattglei.ch"
  proxied = true
  ttl     = 1
  type    = "CNAME"
  zone_id = local.mattgleich_zone
}

resource "cloudflare_dns_record" "mattgleich_mail" {
  content  = "mx1.improvmx.com"
  name     = "mattglei.ch"
  priority = 10
  proxied  = false
  ttl      = 1
  type     = "MX"
  zone_id  = local.mattgleich_zone
}

resource "cloudflare_dns_record" "mattgleich_mail_backup" {
  content  = "mx2.improvmx.com"
  name     = "mattglei.ch"
  priority = 20
  proxied  = false
  ttl      = 1
  type     = "MX"
  zone_id  = local.mattgleich_zone
}

resource "cloudflare_dns_record" "mattgleich_mail_spf" {
  content = "\"v=spf1 include:spf.improvmx.com ~all\""
  name    = "mattglei.ch"
  proxied = false
  ttl     = 1
  type    = "TXT"
  zone_id = local.mattgleich_zone
}
