locals {
  gleichtv_zone = "b58fac2767154039d6719c89f3688677"
}

resource "cloudflare_dns_record" "gleichtv_stream" {
  content = local.lab_address
  name    = "stream.gleich.tv"
  proxied = false
  ttl     = 1
  type    = "A"
  zone_id = local.gleichtv_zone
}

resource "cloudflare_dns_record" "gleichtv_request" {
  content = local.lab_address
  name    = "request.gleich.tv"
  proxied = false
  ttl     = 1
  type    = "A"
  zone_id = local.gleichtv_zone
}
