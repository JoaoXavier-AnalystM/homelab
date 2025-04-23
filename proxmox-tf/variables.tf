variable "pm_api_url" {
  type        = string
  description = "Proxmox API URL"
}

variable "pm_api_user" {
  type        = string
  description = "Proxmox username (e.g. root@pam)"
}
variable "pm_api_token_id" {
  type        = string
  description = "Proxmox API token ID (e.g. root@pam!token_name)"
}

variable "ssh_public_key" {
  description = "Conteúdo da chave SSH pública"
  type        = string
}
