# Hetzner Cloud Project Setup

This repository will be used to bootstrap the infrastructure project on Hetzner Cloud.


## Prerequesites

- [terraform](https://terraform.io)
- [ansible](https://www.ansible.com/)
- Credentials for the Hetzner Cloud projects (API-Token)


## What will be bootstrapped?

This repository bootstraps the following resources with terraform:

- Hetzner Cloud Networks including Subnetworks
- SSH Key for accessing Servers
- NAT Gateway Instance/VPN Endpoint

