resource "ssh_resource" "echo" {
  # 设置永远执行
  triggers = {
    always_run = "${timestamp()}"
  }

  host        = var.shell_host
  user        = "root"
  agent       = false
  private_key = file("${var.ssh_private_key}")

  timeout  = "20s"
  commands = var.shell_cmd

}

output "result" {
  value = ssh_resource.echo.result

}
