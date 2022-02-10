resource "cloudflare_record" "mattgleich_com_root" {
  zone_id = var.zone_id_mattgleich_com
  type    = "A"
  name    = ""
  value   = "76.76.21.21"
  proxied = true
}

resource "cloudflare_record" "mattgleich_com_root_mail_main" {
  zone_id  = var.zone_id_mattgleich_com
  type     = "MX"
  name     = ""
  value    = "mx1.improvmx.com."
  priority = 10
}

resource "cloudflare_record" "mattgleich_com_root_mail_backup" {
  zone_id  = var.zone_id_mattgleich_com
  type     = "MX"
  name     = ""
  value    = "mx2.improvmx.com."
  priority = 20
}

resource "cloudflare_record" "mattgleich_com_api" {
  zone_id = var.zone_id_mattgleich_com
  type    = "A"
  name    = "*.api"
  value   = "174.138.25.183"
}

resource "cloudflare_record" "mattgleich_com_documents" {
  zone_id = var.zone_id_mattgleich_com
  type    = "A"
  name    = "documents"
  value   = "174.138.25.183"
  proxied = true
}

resource "cloudflare_record" "mattgleich_com_assignments" {
  zone_id = var.zone_id_mattgleich_com
  type    = "A"
  name    = "assignments"
  value   = "174.138.25.183"
  proxied = true
}

resource "cloudflare_record" "mattgleich_com_github" {
  zone_id = var.zone_id_mattgleich_com
  type    = "A"
  name    = "github"
  value   = "8.8.8.8"
}

resource "cloudflare_record" "mattgleich_com_inspiration" {
  zone_id = var.zone_id_mattgleich_com
  type    = "A"
  name    = "inspiration"
  value   = "8.8.8.8"
}

resource "cloudflare_record" "mattgleich_com_links" {
  zone_id = var.zone_id_mattgleich_com
  type    = "A"
  name    = "links"
  value   = "174.138.35.183"
  proxied = true
}

resource "cloudflare_record" "mattgleich_com_socials" {
  zone_id = var.zone_id_mattgleich_com
  type    = "A"
  name    = "socials"
  value   = "174.138.35.183"
  proxied = true
}

resource "cloudflare_record" "mattgleich_com_graphql" {
  zone_id = var.zone_id_mattgleich_com
  type    = "A"
  name    = "graphql"
  value   = "174.138.35.183"
  proxied = true
}

resource "cloudflare_record" "mattgleich_com_wild_school" {
  zone_id = var.zone_id_mattgleich_com
  type    = "CNAME"
  name    = "*.school"
  value   = var.vercel_cname
}

resource "cloudflare_record" "mattgleich_com_school" {
  zone_id = var.zone_id_mattgleich_com
  type    = "CNAME"
  name    = "school"
  value   = var.vercel_cname
  proxied = true
}

resource "cloudflare_record" "mattgleich_com_ghs_store" {
  zone_id = var.zone_id_mattgleich_com
  type    = "CNAME"
  name    = "ghs-store"
  value   = var.vercel_cname
  proxied = true
}

resource "cloudflare_record" "mattgleich_com_cms" {
  zone_id = var.zone_id_mattgleich_com
  type    = "A"
  name    = "cms"
  value   = "174.138.35.183"
  proxied = true
}

resource "cloudflare_record" "mattgleich_com_linkedin" {
  zone_id = var.zone_id_mattgleich_com
  type    = "A"
  name    = "linkedin"
  value   = "8.8.8.8"
}

resource "cloudflare_record" "mattgleich_com_www" {
  zone_id = var.zone_id_mattgleich_com
  type    = "CNAME"
  name    = "www"
  value   = var.vercel_cname
  proxied = true
}

resource "cloudflare_record" "mattgleich_com_kiwi_docs" {
  zone_id = var.zone_id_mattgleich_com
  type    = "CNAME"
  name    = "kiwi.docs"
  value   = var.vercel_cname
  proxied = true
}

resource "cloudflare_record" "mattgleich_com_from" {
  zone_id = var.zone_id_mattgleich_com
  type    = "CNAME"
  name    = "from"
  value   = var.vercel_cname
  proxied = true
}

resource "cloudflare_record" "mattgleich_com_svg_animation_tester" {
  zone_id = var.zone_id_mattgleich_com
  type    = "CNAME"
  name    = "svg-animation-tester"
  value   = var.vercel_cname
  proxied = true
}

resource "cloudflare_record" "mattgleich_com_blackbird" {
  zone_id = var.zone_id_mattgleich_com
  type    = "CNAME"
  name    = "blackbird"
  value   = var.vercel_cname
  proxied = true
}

resource "cloudflare_record" "mattgleich_com_feynman_project" {
  zone_id = var.zone_id_mattgleich_com
  type    = "CNAME"
  name    = "feynman-project"
  value   = var.vercel_cname
  proxied = true
}

resource "cloudflare_record" "mattgleich_com_javelin" {
  zone_id = var.zone_id_mattgleich_com
  type    = "CNAME"
  name    = "javelin"
  value   = var.vercel_cname
  proxied = true
}
