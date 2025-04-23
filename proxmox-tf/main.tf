
provider "proxmox" {
  pm_api_url          = var.proxmox_api_url
  pm_tls_insecure     = true
  pm_api_token_id     = var.proxmox_api_token_id
  pm_api_token_secret = var.proxmox_api_token_secret
}


module "test_vm" {
  source         = "./modules/vm"
  vm_id          = 202
  ip_last_octet  = 22
  ssh_public_key = file("/home/joaox/homelab/proxmox-tf/id_rsa.pub")

  vm_name = "vm-${202}"
}
