variable "zone_id" {
  type = string
}

variable "addresses" {
  default = {
    vercel = "cname.vercel-dns.com."
  }
  type = object({
    vercel = string
  })
}
