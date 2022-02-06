resource "cloudflare_record" "api" {
  zone_id = var.mattgleich_zone_id
  type    = "A"
  name    = "*.api"
  value   = "174.138.25.183"
}
