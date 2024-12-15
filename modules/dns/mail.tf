resource "cloudflare_record" "root_mail_main" {
  zone_id  = var.zone_id
  type     = "MX"
  name     = "@"
  content  = "mx1.improvmx.com."
  priority = 10
  ttl      = 1
}

resource "cloudflare_record" "root_mail_backup" {
  zone_id  = var.zone_id
  type     = "MX"
  name     = "@"
  content  = "mx2.improvmx.com."
  priority = 20
  ttl      = 1
}
