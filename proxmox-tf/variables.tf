variable "proxmox_api_url" {
  type = string
}

variable "proxmox_api_token_id" {
  description = "Proxmox API Token ID"
  type        = string
  sensitive   = true
}

variable "proxmox_api_token_secret" {
  description = "Proxmox API Token Secret"
  type        = string
  sensitive   = true
}

variable "ssh_key" {
  description = "Chave SSH pública"
  type        = string
  sensitive   = true # Oculta nos logs
}