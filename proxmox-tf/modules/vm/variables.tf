variable "vm_name" {
  type        = string
  description = "Nome da VM"
}

variable "vm_id" {
  type        = number
  description = "ID da VM (único no cluster)"
}

variable "ip_last_octet" {
  type        = number
  description = "Último octeto do IP fixo"
}

variable "ssh_public_key" {
  type        = string
  description = "Chave pública SSH"
}

variable "default_user" {
  type        = string
  default     = "ubuntu"
  description = "Usuário padrão para cloud-init"
}

variable "default_password" {
  type        = string
  default     = "ubuntu"
  description = "Senha padrão do usuário"
}
