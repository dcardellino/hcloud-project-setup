resource "hcloud_network" "network" {
  name     = "cardellinotech"
  ip_range = "172.18.64.0/22"
  labels = {
    "ManagedBy" = "Terraform"
  }
  delete_protection = true
}

resource "hcloud_network_subnet" "subnet" {
  network_id   = hcloud_network.network.id
  type         = "server"
  network_zone = "eu-central"
  ip_range     = "172.18.64.0/22"
}

resource "hcloud_network_route" "route" {
  network_id  = hcloud_network.network.id
  destination = "0.0.0.0/0"
  gateway     = "172.18.64.100"
}

resource "hcloud_ssh_key" "ssh_key" {
  name       = "cardellinotech"
  public_key = file("~/.ssh/id_ed25519.pub")
  labels = {
    "ManagedBy" = "Terraform"
  }
}
