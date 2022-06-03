resource "cloudflare_record" "mattgleich_com_root" {
  zone_id = var.zone_id_mattgleich_com
  type    = "A"
  name    = ""
  value   = "76.76.21.21"
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
  value   = "174.138.35.183"
}

resource "cloudflare_record" "mattgleich_com_documents" {
  zone_id = var.zone_id_mattgleich_com
  type    = "A"
  name    = "documents"
  value   = "174.138.35.183"
}

resource "cloudflare_record" "mattgleich_com_photos" {
  zone_id = var.zone_id_mattgleich_com
  type    = "A"
  name    = "photos"
  value   = "174.138.35.183"
}

resource "cloudflare_record" "mattgleich_com_assignments" {
  zone_id = var.zone_id_mattgleich_com
  type    = "A"
  name    = "assignments"
  value   = "174.138.35.183"
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
}

resource "cloudflare_record" "mattgleich_com_socials" {
  zone_id = var.zone_id_mattgleich_com
  type    = "A"
  name    = "socials"
  value   = "174.138.35.183"
}

resource "cloudflare_record" "mattgleich_com_graphql" {
  zone_id = var.zone_id_mattgleich_com
  type    = "A"
  name    = "graphql"
  value   = "174.138.35.183"
}

resource "cloudflare_record" "mattgleich_com_wild_school" {
  zone_id = var.zone_id_mattgleich_com
  type    = "A"
  name    = "*.school"
  value   = "76.76.21.21"
}

resource "cloudflare_record" "mattgleich_com_school" {
  zone_id = var.zone_id_mattgleich_com
  type    = "A"
  name    = "school"
  value   = "76.76.21.21"
}

resource "cloudflare_record" "mattgleich_com_ghs_store" {
  zone_id = var.zone_id_mattgleich_com
  type    = "A"
  name    = "ghs-store"
  value   = "76.76.21.21"
}

resource "cloudflare_record" "mattgleich_com_cms" {
  zone_id = var.zone_id_mattgleich_com
  type    = "A"
  name    = "cms"
  value   = "174.138.35.183"
}

resource "cloudflare_record" "mattgleich_com_api_captain" {
  zone_id = var.zone_id_mattgleich_com
  type    = "A"
  name    = "captain.api"
  value   = "174.138.35.183"
}

resource "cloudflare_record" "mattgleich_com_linkedin" {
  zone_id = var.zone_id_mattgleich_com
  type    = "A"
  name    = "linkedin"
  value   = "8.8.8.8"
}

resource "cloudflare_record" "mattgleich_com_www" {
  zone_id = var.zone_id_mattgleich_com
  type    = "A"
  name    = "www"
  value   = "76.76.21.21"
}

resource "cloudflare_record" "mattgleich_com_optic_docs" {
  zone_id = var.zone_id_mattgleich_com
  type    = "A"
  name    = "optic.docs"
  value   = "76.76.21.21"
}

resource "cloudflare_record" "mattgleich_com_from" {
  zone_id = var.zone_id_mattgleich_com
  type    = "A"
  name    = "from"
  value   = "76.76.21.21"
}

resource "cloudflare_record" "mattgleich_com_svg_animation_tester" {
  zone_id = var.zone_id_mattgleich_com
  type    = "A"
  name    = "svg-animation-tester"
  value   = "76.76.21.21"
}

resource "cloudflare_record" "mattgleich_com_blackbird" {
  zone_id = var.zone_id_mattgleich_com
  type    = "A"
  name    = "blackbird"
  value   = "76.76.21.21"
}

resource "cloudflare_record" "mattgleich_com_feynman_project" {
  zone_id = var.zone_id_mattgleich_com
  type    = "A"
  name    = "feynman-project"
  value   = "76.76.21.21"
}

resource "cloudflare_record" "mattgleich_com_javelin" {
  zone_id = var.zone_id_mattgleich_com
  type    = "A"
  name    = "javelin"
  value   = "76.76.21.21"
}

resource "cloudflare_record" "mattgleich_com_daily_poll_website" {
  zone_id = var.zone_id_mattgleich_com
  type    = "A"
  name    = "daily-poll"
  value   = "76.76.21.21"
}

resource "cloudflare_record" "mattgleich_com_ghs_games_website" {
  zone_id = var.zone_id_mattgleich_com
  type    = "A"
  name    = "ghs-games"
  value   = "76.76.21.21"
}
