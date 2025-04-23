provider "proxmox" {
  pm_api_url      = var.pm_api_url
  pm_user         = var.pm_user
  pm_password     = var.pm_password
  pm_tls_insecure = true
}

module "test_vm" {
  source         = "./modules/vm"
  vm_id          = 202
  ip_last_octet  = 22
  ssh_public_key = file("~/.ssh/id_rsa.pub")

  vm_name = "vm-${202}"
}
