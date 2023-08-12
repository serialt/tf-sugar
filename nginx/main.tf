
terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "2.20.3"
    }
  }
}

provider "docker" {
  host = "unix:///var/run/docker.sock"

}

# Pulls the image
resource "docker_image" "nginx" {
  name = "nginx:latest"

}

# Create a container
resource "docker_container" "nginx" {
  image    = docker_image.nginx.name
  name     = "nginx"
  hostname = "nginx-imau"
  restart  = "always"
  tty      = true

  ports {
    internal = "80"
    external = "8899"
  }
}
