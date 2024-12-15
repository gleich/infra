resource "cloudflare_dns_record" "mattgleich_root" {
  zone_id = var.zone_id_mattgleich
  type    = "A"
  name    = ""
  value   = "76.76.21.21"
}

resource "cloudflare_dns_record" "mattgleich_root_mail_main" {
  zone_id  = var.zone_id_mattgleich
  type     = "MX"
  name     = ""
  value    = "mx1.improvmx.com."
  priority = 10
}

resource "cloudflare_dns_record" "mattgleich_root_mail_backup" {
  zone_id  = var.zone_id_mattgleich
  type     = "MX"
  name     = ""
  value    = "mx2.improvmx.com."
  priority = 20
}

resource "cloudflare_dns_record" "mattgleich_dev_wildcard" {
  zone_id = var.zone_id_mattgleich
  type    = "A"
  name    = "*.dev"
  value   = "198.199.69.145"
}

resource "cloudflare_dns_record" "mattgleich_dev" {
  zone_id = var.zone_id_mattgleich
  type    = "A"
  name    = "dev"
  value   = "198.199.69.145"
}

resource "cloudflare_dns_record" "mattgleich_ritracing_wildcard" {
  zone_id = var.zone_id_mattgleich
  type    = "A"
  name    = "*.ritracing"
  value   = "159.65.230.177"
}

resource "cloudflare_dns_record" "mattgleich_ritracing" {
  zone_id = var.zone_id_mattgleich
  type    = "A"
  name    = "ritracing"
  value   = "159.65.230.177"
}

resource "cloudflare_dns_record" "mattgleich_www" {
  zone_id = var.zone_id_mattgleich
  type    = "CNAME"
  name    = "www"
  value   = "cname.vercel-dns.com."
}

resource "cloudflare_dns_record" "mattgleich_svg_animation_tester" {
  zone_id = var.zone_id_mattgleich
  type    = "A"
  name    = "svg-animation-tester"
  value   = "76.76.21.21"
}

resource "cloudflare_dns_record" "mattgleich_blackbird" {
  zone_id = var.zone_id_mattgleich
  type    = "A"
  name    = "blackbird"
  value   = "76.76.21.21"
}

resource "cloudflare_dns_record" "mattgleich_feynman_project" {
  zone_id = var.zone_id_mattgleich
  type    = "A"
  name    = "feynman-project"
  value   = "76.76.21.21"
}

resource "cloudflare_dns_record" "mattgleich_javelin" {
  zone_id = var.zone_id_mattgleich
  type    = "A"
  name    = "javelin"
  value   = "76.76.21.21"
}

resource "cloudflare_dns_record" "mattgleich_grad" {
  zone_id = var.zone_id_mattgleich
  type    = "A"
  name    = "grad"
  value   = "76.76.21.21"
}

resource "cloudflare_dns_record" "mattgleich_v2" {
  zone_id = var.zone_id_mattgleich
  type    = "A"
  name    = "v2"
  value   = "76.76.21.21"
}

resource "cloudflare_dns_record" "mattgleich_terminal" {
  zone_id = var.zone_id_mattgleich
  type    = "A"
  name    = "terminal"
  value   = "198.199.69.145"
}

resource "cloudflare_dns_record" "mattgleich_google_search_console" {
  zone_id = var.zone_id_mattgleich
  type    = "TXT"
  name    = "mattglei.ch"
  value   = "google-site-verification=_gX7QrBjFNB1USwYWAd4Ei9svlMsmWfsCxvT6veE-OI"
}
