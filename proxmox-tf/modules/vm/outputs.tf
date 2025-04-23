output "vm_ip" {
  value = "192.168.1.${var.ip_last_octet}"
}
output "vm_name" {
  value = var.vm_name
}