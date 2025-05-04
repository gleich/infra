resource "cloudflare_page_rule" "example_page_rule" {
  zone_id  = var.zone_id
  target   = "www"
  priority = 1
  status   = "active"
  actions {
    forwarding_url {
      url         = "https://mattglei.ch"
      status_code = 301
    }
  }
}
