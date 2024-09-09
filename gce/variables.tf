// === GCE ===
variable "list_vm" {
  type    = list(string)
}

variable "credential" {
  type    = string
}

variable "vpc_name" {
  type = string
}