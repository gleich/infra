locals {
  mattgleich_zone       = "0321ab5a32959ab44e02ba727bae8106"
  cloudflare_account_id = "3f7f98672d2906c5003891a14713aada"

  lab_address        = "5.161.73.129"
  cloudflare_address = "192.0.2.1"
}

# ++++++++++++++++
# CLOUDFLARE RULES
# ++++++++++++++++

resource "cloudflare_dns_record" "mattgleich_www" {
  content = local.cloudflare_address
  name    = "www.mattglei.ch"
  proxied = true
  ttl     = 1
  type    = "A"
  zone_id = local.mattgleich_zone
}

# ++++++++++
# LAB SERVER
# ++++++++++

resource "cloudflare_dns_record" "mattgleich_lab" {
  content = local.lab_address
  name    = "lab.mattglei.ch"
  proxied = false
  ttl     = 1
  type    = "A"
  zone_id = local.mattgleich_zone
}

resource "cloudflare_dns_record" "mattgleich_lab_wildcard" {
  content = local.lab_address
  name    = "*.lab.mattglei.ch"
  proxied = false
  ttl     = 1
  type    = "A"
  zone_id = local.mattgleich_zone
}

resource "cloudflare_dns_record" "mattgleich_docker" {
  content = local.lab_address
  name    = "docker.mattglei.ch"
  proxied = true
  ttl     = 1
  type    = "A"
  zone_id = local.mattgleich_zone
}

resource "cloudflare_dns_record" "mattgleich_lcp" {
  content = local.lab_address
  name    = "lcp.mattglei.ch"
  proxied = true
  ttl     = 1
  type    = "A"
  zone_id = local.mattgleich_zone
}

resource "cloudflare_dns_record" "mattgleich_go" {
  content = local.lab_address
  name    = "go.mattglei.ch"
  proxied = true
  ttl     = 1
  type    = "A"
  zone_id = local.mattgleich_zone
}

resource "cloudflare_dns_record" "mattgleich_terminal" {
  content = local.lab_address
  name    = "terminal.mattglei.ch"
  proxied = false
  ttl     = 1
  type    = "A"
  zone_id = local.mattgleich_zone
}

resource "cloudflare_dns_record" "mattgleich_s3" {
  content = local.lab_address
  name    = "s3.mattglei.ch"
  proxied = true
  ttl     = 1
  type    = "A"
  zone_id = local.mattgleich_zone
}

# ++++++++++++++++
# CLOUDFLARE PAGES
# ++++++++++++++++

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

resource "cloudflare_dns_record" "mattgleich_split" {
  content = "split-b5l.pages.dev"
  name    = "split"
  proxied = true
  ttl     = 1
  type    = "CNAME"
  zone_id = local.mattgleich_zone
}

# +++++
# EMAIL
# +++++

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
