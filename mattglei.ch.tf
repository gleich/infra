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

resource "cloudflare_record" "mattgleich_api" {
  zone_id = var.zone_id_mattgleich
  type    = "A"
  name    = "*.api"
  value   = "174.138.35.183"
}

resource "cloudflare_record" "mattgleich_documents" {
  zone_id = var.zone_id_mattgleich
  type    = "A"
  name    = "documents"
  value   = "174.138.35.183"
}

resource "cloudflare_record" "mattgleich_assignments" {
  zone_id = var.zone_id_mattgleich
  type    = "A"
  name    = "assignments"
  value   = "174.138.35.183"
}

resource "cloudflare_record" "mattgleich_photos" {
  zone_id = var.zone_id_mattgleich
  type    = "A"
  name    = "photos"
  value   = "174.138.35.183"
}

resource "cloudflare_record" "mattgleich_github" {
  zone_id = var.zone_id_mattgleich
  type    = "A"
  name    = "github"
  value   = "8.8.8.8"
}

resource "cloudflare_record" "mattgleich_inspiration" {
  zone_id = var.zone_id_mattgleich
  type    = "A"
  name    = "inspiration"
  value   = "8.8.8.8"
}

resource "cloudflare_record" "mattgleich_links" {
  zone_id = var.zone_id_mattgleich
  type    = "A"
  name    = "links"
  value   = "174.138.35.183"
}

resource "cloudflare_record" "mattgleich_socials" {
  zone_id = var.zone_id_mattgleich
  type    = "A"
  name    = "socials"
  value   = "174.138.35.183"
}

resource "cloudflare_record" "mattgleich_graphql" {
  zone_id = var.zone_id_mattgleich
  type    = "A"
  name    = "graphql"
  value   = "174.138.35.183"
}

resource "cloudflare_record" "mattgleich_wild_school" {
  zone_id = var.zone_id_mattgleich
  type    = "A"
  name    = "*.school"
  value   = "76.76.21.21"
}

resource "cloudflare_record" "mattgleich_school" {
  zone_id = var.zone_id_mattgleich
  type    = "A"
  name    = "school"
  value   = "76.76.21.21"
}

resource "cloudflare_record" "mattgleich_ghs_store" {
  zone_id = var.zone_id_mattgleich
  type    = "A"
  name    = "ghs-store"
  value   = "76.76.21.21"
}

resource "cloudflare_record" "mattgleich_cms" {
  zone_id = var.zone_id_mattgleich
  type    = "A"
  name    = "cms"
  value   = "174.138.35.183"
}

resource "cloudflare_record" "mattgleich_api_captain" {
  zone_id = var.zone_id_mattgleich
  type    = "A"
  name    = "captain.api"
  value   = "174.138.35.183"
}

resource "cloudflare_record" "mattgleich_linkedin" {
  zone_id = var.zone_id_mattgleich
  type    = "A"
  name    = "linkedin"
  value   = "8.8.8.8"
}

resource "cloudflare_record" "mattgleich_www" {
  zone_id = var.zone_id_mattgleich
  type    = "A"
  name    = "www"
  value   = "76.76.21.21"
}

resource "cloudflare_record" "mattgleich_optic_docs" {
  zone_id = var.zone_id_mattgleich
  type    = "A"
  name    = "optic.docs"
  value   = "76.76.21.21"
}

resource "cloudflare_record" "mattgleich_from" {
  zone_id = var.zone_id_mattgleich
  type    = "A"
  name    = "from"
  value   = "76.76.21.21"
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

resource "cloudflare_record" "mattgleich_daily_poll_website" {
  zone_id = var.zone_id_mattgleich
  type    = "A"
  name    = "daily-poll"
  value   = "76.76.21.21"
}

resource "cloudflare_record" "mattgleich_ghs_games_website" {
  zone_id = var.zone_id_mattgleich
  type    = "A"
  name    = "ghs-games"
  value   = "76.76.21.21"
}
