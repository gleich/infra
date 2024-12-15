resource "cloudflare_record" "mattgleich_com_root" {
  zone_id = var.zone_ids.mattgleich_com
  type    = "A"
  name    = "@"
  content = var.addresses.vercel
  ttl     = 1
}

resource "cloudflare_record" "mattgleich_com_root_mail_main" {
  zone_id  = var.zone_ids.mattgleich_com
  type     = "MX"
  name     = "@"
  content  = "mx1.improvmx.com."
  priority = 10
  ttl      = 1
}

resource "cloudflare_record" "mattgleich_com_root_mail_backup" {
  zone_id  = var.zone_ids.mattgleich_com
  type     = "MX"
  name     = "@"
  content  = "mx2.improvmx.com."
  priority = 20
  ttl      = 1
}

resource "cloudflare_record" "mattgleich_com_dev_wildcard" {
  zone_id = var.zone_ids.mattgleich_com
  type    = "A"
  name    = "*.dev"
  content = var.addresses.server
  ttl     = 1
}

resource "cloudflare_record" "mattgleich_com_dev" {
  zone_id = var.zone_ids.mattgleich_com
  type    = "A"
  name    = "dev"
  content = var.addresses.server
  ttl     = 1
}

resource "cloudflare_record" "mattgleich_com_www" {
  zone_id = var.zone_ids.mattgleich_com
  type    = "CNAME"
  name    = "www"
  content = "cname.vercel-dns.com."
  ttl     = 1
}

resource "cloudflare_record" "mattgleich_com_svg_animation_tester" {
  zone_id = var.zone_ids.mattgleich_com
  type    = "A"
  name    = "svg-animation-tester"
  content = var.addresses.vercel
  ttl     = 1
}

resource "cloudflare_record" "mattgleich_com_blackbird" {
  zone_id = var.zone_ids.mattgleich_com
  type    = "A"
  name    = "blackbird"
  content = var.addresses.vercel
  ttl     = 1
}

resource "cloudflare_record" "mattgleich_com_feynman_project" {
  zone_id = var.zone_ids.mattgleich_com
  type    = "A"
  name    = "feynman-project"
  content = var.addresses.vercel
  ttl     = 1
}

resource "cloudflare_record" "mattgleich_com_javelin" {
  zone_id = var.zone_ids.mattgleich_com
  type    = "A"
  name    = "javelin"
  content = var.addresses.vercel
  ttl     = 1
}

resource "cloudflare_record" "mattgleich_com_grad" {
  zone_id = var.zone_ids.mattgleich_com
  type    = "A"
  name    = "grad"
  content = var.addresses.vercel
  ttl     = 1
}

resource "cloudflare_record" "mattgleich_com_v2" {
  zone_id = var.zone_ids.mattgleich_com
  type    = "A"
  name    = "v2"
  content = var.addresses.vercel
  ttl     = 1
}

resource "cloudflare_record" "mattgleich_com_terminal" {
  zone_id = var.zone_ids.mattgleich_com
  type    = "A"
  name    = "terminal"
  content = var.addresses.server
  ttl     = 1
}

resource "cloudflare_record" "mattgleich_com_google_search_console" {
  zone_id = var.zone_ids.mattgleich_com
  type    = "TXT"
  name    = "mattgleich.com"
  content = "google-site-verification=phUt5Umjs2h9BizwlgbGK1CtSh2hkqW2MB4tJCw47fU"
  ttl     = 3600
}
