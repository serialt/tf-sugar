

variable "shell_cmd" {
  type    = list(any)
  default = [""]

}

variable "ssh_private_key" {
  type    = string
  default = ""

}

variable "shell_host" {
  type    = string
  default = ""

}

