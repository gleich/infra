resource "cloudflare_record" "root" {
  zone_id = var.zone_id
  type    = "A"
  name    = ""
  value   = "76.76.21.21"
}

resource "cloudflare_record" "root_mail_main" {
  zone_id  = var.zone_id
  type     = "MX"
  name     = ""
  value    = "mx1.improvmx.com."
  priority = 10
}

resource "cloudflare_record" "root_mail_backup" {
  zone_id  = var.zone_id
  type     = "MX"
  name     = ""
  value    = "mx2.improvmx.com."
  priority = 20
}

resource "cloudflare_record" "api" {
  zone_id = var.zone_id
  type    = "A"
  name    = "*.api"
  value   = "174.138.25.183"
}

resource "cloudflare_record" "documents" {
  zone_id = var.zone_id
  type    = "A"
  name    = "documents"
  value   = "174.138.25.183"
}

resource "cloudflare_record" "assignments" {
  zone_id = var.zone_id
  type    = "A"
  name    = "assignments"
  value   = "174.138.25.183"
}

resource "cloudflare_record" "github" {
  zone_id = var.zone_id
  type    = "A"
  name    = "github"
  value   = "8.8.8.8"
}

resource "cloudflare_record" "inspiration" {
  zone_id = var.zone_id
  type    = "A"
  name    = "inspiration"
  value   = "8.8.8.8"
}

resource "cloudflare_record" "links" {
  zone_id = var.zone_id
  type    = "A"
  name    = "links"
  value   = "174.138.35.183"
}

resource "cloudflare_record" "socials" {
  zone_id = var.zone_id
  type    = "A"
  name    = "socials"
  value   = "174.138.35.183"
}

resource "cloudflare_record" "graphql" {
  zone_id = var.zone_id
  type    = "A"
  name    = "graphql"
  value   = "174.138.35.183"
}

resource "cloudflare_record" "wild_school" {
  zone_id = var.zone_id
  type    = "A"
  name    = "*.school"
  value   = "76.76.21.21"
}

resource "cloudflare_record" "school" {
  zone_id = var.zone_id
  type    = "A"
  name    = "school"
  value   = "76.76.21.21"
}

resource "cloudflare_record" "ghs_store" {
  zone_id = var.zone_id
  type    = "A"
  name    = "ghs-store"
  value   = "76.76.21.21"
}

resource "cloudflare_record" "cms" {
  zone_id = var.zone_id
  type    = "A"
  name    = "cms"
  value   = "174.138.35.183"
}

resource "cloudflare_record" "linkedin" {
  zone_id = var.zone_id
  type    = "A"
  name    = "linkedin"
  value   = "8.8.8.8"
}

resource "cloudflare_record" "www" {
  zone_id = var.zone_id
  type    = "A"
  name    = "www"
  value   = "76.76.21.21"
}

resource "cloudflare_record" "kiwi_docs" {
  zone_id = var.zone_id
  type    = "A"
  name    = "kiwi.docs"
  value   = "76.76.21.21"
}

resource "cloudflare_record" "from" {
  zone_id = var.zone_id
  type    = "A"
  name    = "from"
  value   = "76.76.21.21"
}

resource "cloudflare_record" "svg_animation_tester" {
  zone_id = var.zone_id
  type    = "A"
  name    = "svg-animation-tester"
  value   = "76.76.21.21"
}

resource "cloudflare_record" "blackbird" {
  zone_id = var.zone_id
  type    = "A"
  name    = "blackbird"
  value   = "76.76.21.21"
}

resource "cloudflare_record" "feynman_project" {
  zone_id = var.zone_id
  type    = "A"
  name    = "feynman-project"
  value   = "76.76.21.21"
}

resource "cloudflare_record" "javelin" {
  zone_id = var.zone_id
  type    = "A"
  name    = "javelin"
  value   = "76.76.21.21"
}
