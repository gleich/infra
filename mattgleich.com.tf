resource "cloudflare_dns_record" "mattgleich_com_root" {
  zone_id = var.zone_id_mattgleich_com
  type    = "A"
  name    = ""
  value   = "76.76.21.21"
}

resource "cloudflare_dns_record" "mattgleich_com_root_mail_main" {
  zone_id  = var.zone_id_mattgleich_com
  type     = "MX"
  name     = ""
  value    = "mx1.improvmx.com."
  priority = 10
}

resource "cloudflare_dns_record" "mattgleich_com_root_mail_backup" {
  zone_id  = var.zone_id_mattgleich_com
  type     = "MX"
  name     = ""
  value    = "mx2.improvmx.com."
  priority = 20
}

resource "cloudflare_dns_record" "mattgleich_com_dev_wildcard" {
  zone_id = var.zone_id_mattgleich_com
  type    = "A"
  name    = "*.dev"
  value   = "198.199.69.145"
}

resource "cloudflare_dns_record" "mattgleich_com_dev" {
  zone_id = var.zone_id_mattgleich_com
  type    = "A"
  name    = "dev"
  value   = "198.199.69.145"
}

resource "cloudflare_dns_record" "mattgleich_com_ritracing_wildcard" {
  zone_id = var.zone_id_mattgleich_com
  type    = "A"
  name    = "*.ritracing"
  value   = "159.65.230.177"
}

resource "cloudflare_dns_record" "mattgleich_com_ritracing" {
  zone_id = var.zone_id_mattgleich_com
  type    = "A"
  name    = "ritracing"
  value   = "159.65.230.177"
}

resource "cloudflare_dns_record" "mattgleich_com_www" {
  zone_id = var.zone_id_mattgleich_com
  type    = "CNAME"
  name    = "www"
  value   = "cname.vercel-dns.com."
}

resource "cloudflare_dns_record" "mattgleich_com_svg_animation_tester" {
  zone_id = var.zone_id_mattgleich_com
  type    = "A"
  name    = "svg-animation-tester"
  value   = "76.76.21.21"
}

resource "cloudflare_dns_record" "mattgleich_com_blackbird" {
  zone_id = var.zone_id_mattgleich_com
  type    = "A"
  name    = "blackbird"
  value   = "76.76.21.21"
}

resource "cloudflare_dns_record" "mattgleich_com_feynman_project" {
  zone_id = var.zone_id_mattgleich_com
  type    = "A"
  name    = "feynman-project"
  value   = "76.76.21.21"
}

resource "cloudflare_dns_record" "mattgleich_com_javelin" {
  zone_id = var.zone_id_mattgleich_com
  type    = "A"
  name    = "javelin"
  value   = "76.76.21.21"
}

resource "cloudflare_dns_record" "mattgleich_com_grad" {
  zone_id = var.zone_id_mattgleich_com
  type    = "A"
  name    = "grad"
  value   = "76.76.21.21"
}

resource "cloudflare_dns_record" "mattgleich_com_v2" {
  zone_id = var.zone_id_mattgleich_com
  type    = "A"
  name    = "v2"
  value   = "76.76.21.21"
}

resource "cloudflare_dns_record" "mattgleich_com_terminal" {
  zone_id = var.zone_id_mattgleich_com
  type    = "A"
  name    = "terminal"
  value   = "198.199.69.145"
}

resource "cloudflare_dns_record" "mattgleich_com_google_search_console" {
  zone_id = var.zone_id_mattgleich_com
  type    = "TXT"
  name    = "mattgleich.com"
  value   = "google-site-verification=phUt5Umjs2h9BizwlgbGK1CtSh2hkqW2MB4tJCw47fU"
}
