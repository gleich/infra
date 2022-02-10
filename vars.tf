variable "api_token" {
  type = string
}

variable "email" {
  default = "email@mattglei.ch"
  type    = string
}

variable "zone_id_mattgleich" {
  type = string
}

variable "zone_id_mattgleich_com" {
  type = string
}

variable "vercel_cname" {
  type    = string
  default = "cname.vercel-dns.com."
}
