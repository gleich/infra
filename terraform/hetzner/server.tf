resource "hcloud_server" "lab" {
  shutdown_before_deletion = true
  placement_group_id       = 0

  name        = "lab"
  server_type = "cpx21"
  image       = "ubuntu-24.04"
  ssh_keys    = ["macbook pro"]
  datacenter  = "ash-dc1"
  backups     = true
}
