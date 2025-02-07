variable "zone_id" {
  type = string
}

variable "addresses" {
  default = {
    vercel = "76.76.21.21"
  }
  type = object({
    vercel = string
  })
}
