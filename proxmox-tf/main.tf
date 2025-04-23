provider "proxmox" {
  pm_api_url = var.pm_api_url
  pm_api_user = var.pm_api_user
  pm_api_token_id = var.pm_api_token_id
  pm_tls_insecure = true
}

module "test_vm" {
  source         = "./modules/vm"
  vm_id          = 202
  ip_last_octet  = 22
  ssh_public_key = file("/home/joaox/homelab/proxmox-tf/id_rsa.pub")

  vm_name = "vm-${202}"
}
