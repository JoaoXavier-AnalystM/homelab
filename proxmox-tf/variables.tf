variable "pm_api_url" {
  type        = string
  description = "Proxmox API URL"
}

variable "pm_user" {
  type        = string
  description = "Proxmox username (e.g. root@pam)"
}

variable "pm_password" {
  description = "Senha do Proxmox"
  type        = string
  sensitive   = true
}

variable "ssh_public_key" {
  description = "Conteúdo da chave SSH pública"
  type        = string
}
