variable "zone_ids" {
  type = object({
    mattgleich     = string
    mattgleich_com = string
  })
}

variable "addresses" {
  type = object({
    vercel = string
    server = string
  })
}
