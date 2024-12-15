resource "cloudflare_record" "mattgleich_root" {
  zone_id = var.zone_id_mattgleich
  type    = "A"
  name    = ""
  content = "76.76.21.21"
  ttl     = 1
}

resource "cloudflare_record" "mattgleich_root_mail_main" {
  zone_id  = var.zone_id_mattgleich
  type     = "MX"
  name     = ""
  content  = "mx1.improvmx.com."
  priority = 10
  ttl      = 1
}

resource "cloudflare_record" "mattgleich_root_mail_backup" {
  zone_id  = var.zone_id_mattgleich
  type     = "MX"
  name     = ""
  content  = "mx2.improvmx.com."
  priority = 20
  ttl      = 1
}

resource "cloudflare_record" "mattgleich_dev_wildcard" {
  zone_id = var.zone_id_mattgleich
  type    = "A"
  name    = "*.dev"
  content = "198.199.69.145"
  ttl     = 1
}

resource "cloudflare_record" "mattgleich_dev" {
  zone_id = var.zone_id_mattgleich
  type    = "A"
  name    = "dev"
  content = "198.199.69.145"
  ttl     = 1
}

resource "cloudflare_record" "mattgleich_ritracing_wildcard" {
  zone_id = var.zone_id_mattgleich
  type    = "A"
  name    = "*.ritracing"
  content = "159.65.230.177"
  ttl     = 1
}

resource "cloudflare_record" "mattgleich_ritracing" {
  zone_id = var.zone_id_mattgleich
  type    = "A"
  name    = "ritracing"
  content = "159.65.230.177"
  ttl     = 1
}

resource "cloudflare_record" "mattgleich_www" {
  zone_id = var.zone_id_mattgleich
  type    = "CNAME"
  name    = "www"
  content = "cname.vercel-dns.com."
  ttl     = 1
}

resource "cloudflare_record" "mattgleich_svg_animation_tester" {
  zone_id = var.zone_id_mattgleich
  type    = "A"
  name    = "svg-animation-tester"
  content = "76.76.21.21"
  ttl     = 1
}

resource "cloudflare_record" "mattgleich_blackbird" {
  zone_id = var.zone_id_mattgleich
  type    = "A"
  name    = "blackbird"
  content = "76.76.21.21"
  ttl     = 1
}

resource "cloudflare_record" "mattgleich_feynman_project" {
  zone_id = var.zone_id_mattgleich
  type    = "A"
  name    = "feynman-project"
  content = "76.76.21.21"
  ttl     = 1
}

resource "cloudflare_record" "mattgleich_javelin" {
  zone_id = var.zone_id_mattgleich
  type    = "A"
  name    = "javelin"
  content = "76.76.21.21"
  ttl     = 1
}

resource "cloudflare_record" "mattgleich_grad" {
  zone_id = var.zone_id_mattgleich
  type    = "A"
  name    = "grad"
  content = "76.76.21.21"
  ttl     = 1
}

resource "cloudflare_record" "mattgleich_v2" {
  zone_id = var.zone_id_mattgleich
  type    = "A"
  name    = "v2"
  content = "76.76.21.21"
  ttl     = 1
}

resource "cloudflare_record" "mattgleich_terminal" {
  zone_id = var.zone_id_mattgleich
  type    = "A"
  name    = "terminal"
  content = "198.199.69.145"
  ttl     = 1
}

resource "cloudflare_record" "mattgleich_google_search_console" {
  zone_id = var.zone_id_mattgleich
  type    = "TXT"
  name    = "mattglei.ch"
  content = "google-site-verification=_gX7QrBjFNB1USwYWAd4Ei9svlMsmWfsCxvT6veE-OI"
  ttl     = 3600
}
