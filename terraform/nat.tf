resource "hcloud_server_network" "nat_gateway" {
  server_id  = hcloud_server.nat_gateway.id
  network_id = hcloud_network.network.id
  ip         = "172.18.64.100"
}

resource "hcloud_server" "nat_gateway" {
  name        = "ctec-nat-gateway-01"
  image       = "ubuntu-22.04"
  server_type = "cax11"
  location    = "fsn1"
  ssh_keys = [
    hcloud_ssh_key.ssh_key.id
  ]

  user_data = file("${path.module}/files/user-data.yml")

  #  firewall_ids = [
  #    hcloud_firewall.nat_gateway.id
  #  ]

  labels = {
    "ManagedBy" = "Terraform"
    "Role"      = "NAT"
  }
}

