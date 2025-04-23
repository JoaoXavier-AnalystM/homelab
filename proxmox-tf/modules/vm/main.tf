terraform {
  required_providers {
    proxmox = {
      source  = "telmate/proxmox"
    }
  }
}

resource "proxmox_vm_qemu" "ubuntu" {
  provider    = proxmox
  name        = var.vm_name
  target_node = "pe"
  vmid        = var.vm_id
  clone       = "ubuntu-2404-2-cloud-init"
  full_clone  = true
  cores       = 2
  memory      = 2048
  sockets     = 1
  os_type     = "cloud-init"

  ipconfig0 = "ip=192.168.1.${var.ip_last_octet}/24,gw=192.168.1.1"
  sshkeys   = var.ssh_public_key

  ciuser     = var.default_user
  cipassword = var.default_password

  network {
    id     = 0
    model  = "virtio"
    bridge = "vmbr0"
  }

  disk {
    slot    = "scsi0"            # ✅ slot correto
    type    = "disk"             # ✅ tipo correto
    storage = "local-lvm"
    size    = "10G"
  }

  lifecycle {
    ignore_changes = [
      network,
      disk,
    ]
  }
}
