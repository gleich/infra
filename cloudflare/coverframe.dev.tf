locals {
  coverframe_dev_zone = "273ba96ea009fff540bf1809d0cfdda8"
}

resource "cloudflare_dns_record" "coverframe_dev_root" {
  content = "coverframe.pages.dev"
  name    = "coverframe.dev"
  proxied = true
  ttl     = 1
  type    = "CNAME"
  zone_id = local.coverframe_dev_zone
}
