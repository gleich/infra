locals {
  outdoorfolio_com_zone = "efd5a46ba3ac7418a8a7ace814ad8d81"
}

resource "cloudflare_dns_record" "outdoorfolio_com_root" {
  zone_id = local.outdoorfolio_com_zone
  content = "website-4zx.pages.dev"
  name    = "outdoorfolio.com"
  proxied = true
  ttl     = 1
  type    = "CNAME"
}
