variable "zone_id" {
  type = string
}

variable "addresses" {
  default = {
    vercel = "cname.vercel-dns.com."
    server = "165.227.89.82"
  }
  type = object({
    vercel = string
    server = string
  })
}
