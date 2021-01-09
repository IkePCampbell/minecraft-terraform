resource "docker_container" "single_server" {
  name  = "minecraft_${var.server_name}"
  image = "${docker_image.minecraft_image.latest}"
  ports {
    internal = 25565
    external = var.external_port_number
  }
  volumes {
    host_path      = "${local.root_path}/${var.server_name}"
    container_path = "/data"
  }
  env = ["EULA=TRUE"]
}


