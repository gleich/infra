resource "cloudflare_record" "mattgleich_root" {
  zone_id = var.zone_id_mattgleich
  type    = "A"
  name    = ""
  value   = "76.76.21.21"
}

resource "cloudflare_record" "mattgleich_root_mail_main" {
  zone_id  = var.zone_id_mattgleich
  type     = "MX"
  name     = ""
  value    = "mx1.improvmx.com."
  priority = 10
}

resource "cloudflare_record" "mattgleich_root_mail_backup" {
  zone_id  = var.zone_id_mattgleich
  type     = "MX"
  name     = ""
  value    = "mx2.improvmx.com."
  priority = 20
}

resource "cloudflare_record" "mattgleich_dev_wildcard" {
  zone_id = var.zone_id_mattgleich
  type    = "A"
  name    = "*.dev"
  value   = "147.182.130.61"
}

resource "cloudflare_record" "mattgleich_dev" {
  zone_id = var.zone_id_mattgleich
  type    = "A"
  name    = "dev"
  value   = "147.182.130.61"
}

resource "cloudflare_record" "mattgleich_coolify" {
  zone_id = var.zone_id_mattgleich
  type    = "A"
  name    = "coolify.dev"
  value   = "147.182.130.61"
}

resource "cloudflare_record" "mattgleich_www" {
  zone_id = var.zone_id_mattgleich
  type    = "CNAME"
  name    = "www"
  value   = "cname.vercel-dns.com."
}

resource "cloudflare_record" "mattgleich_svg_animation_tester" {
  zone_id = var.zone_id_mattgleich
  type    = "A"
  name    = "svg-animation-tester"
  value   = "76.76.21.21"
}

resource "cloudflare_record" "mattgleich_blackbird" {
  zone_id = var.zone_id_mattgleich
  type    = "A"
  name    = "blackbird"
  value   = "76.76.21.21"
}

resource "cloudflare_record" "mattgleich_feynman_project" {
  zone_id = var.zone_id_mattgleich
  type    = "A"
  name    = "feynman-project"
  value   = "76.76.21.21"
}

resource "cloudflare_record" "mattgleich_javelin" {
  zone_id = var.zone_id_mattgleich
  type    = "A"
  name    = "javelin"
  value   = "76.76.21.21"
}

resource "cloudflare_record" "mattgleich_grad" {
  zone_id = var.zone_id_mattgleich
  type    = "A"
  name    = "grad"
  value   = "76.76.21.21"
}

resource "cloudflare_record" "mattgleich_beta" {
  zone_id = var.zone_id_mattgleich
  type    = "A"
  name    = "beta"
  value   = "76.76.21.21"
}


resource "cloudflare_record" "mattgleich_niranth" {
  zone_id = var.zone_id_mattgleich
  type    = "A"
  name    = "niranth"
  value   = "76.76.21.21"
}

resource "cloudflare_record" "mattgleich_v2" {
  zone_id = var.zone_id_mattgleich
  type    = "A"
  name    = "v2"
  value   = "76.76.21.21"
}

resource "cloudflare_record" "mattgleich_v3" {
  zone_id = var.zone_id_mattgleich
  type    = "A"
  name    = "v3"
  value   = "76.76.21.21"
}