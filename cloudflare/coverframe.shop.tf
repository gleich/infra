locals {
  coverframe_shop_zone = "bacf7227ff8abdbb5e44310d60fd6ffe"
}

resource "cloudflare_dns_record" "coverframe_shop_root" {
  content = "coverframe.pages.dev"
  name    = "coverframe.shop"
  proxied = true
  ttl     = 1
  type    = "CNAME"
  zone_id = local.coverframe_shop_zone
}
