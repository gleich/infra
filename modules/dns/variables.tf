variable "zone_id" {
  type = string
}

variable "addresses" {
  default = {
    vercel = "76.76.21.21"
    server = "198.199.69.145"
  }
  type = object({
    vercel = string
    server = string
  })
}
