provider "docker" {
  host = "tcp://127.0.0.1:2375"
}

resource "docker_container" "single_server" {
  name  = "minecraft_server"
  image = "${docker_image.minecraft_image.latest}"
  ports {
    internal = var.internal_port_number
    external = "25565"
  }
  volumes {
    host_path      = var.single_host_path
    container_path = "/data"
  }
  env = ["EULA=TRUE"]
}

resource "docker_container" "modded_single_server" {
  name  = "modded_minecraft_server"
  image = "${docker_image.minecraft_image.latest}"
  ports {
    internal = var.internal_port_number
    external = "25565"
  }
  volumes {
    host_path      = var.single_host_path
    container_path = "/data"
  }
  env = [
      "EULA=TRUE",
      "FORGE_INSTALLER=mod-storage/forge-1.14.4-28.1.115-launcher.jar"
  ]
}

resource "docker_image" "minecraft_image" {
  name = var.minecraft_image
}
