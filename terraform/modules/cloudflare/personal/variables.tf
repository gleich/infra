variable "zone_id" {
  type = string
}

variable "addresses" {
  default = {
    vercel = "76.76.21.21"
    server = "165.227.89.82"
  }
  type = object({
    vercel = string
    server = string
  })
}
