resource "digitalocean_droplet" "personal" {
  image      = "ubuntu-22-04-x64"
  name       = "personal"
  region     = "nyc1"
  size       = "s-1vcpu-2gb-intel"
  monitoring = true
}
