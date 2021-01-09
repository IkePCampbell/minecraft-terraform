resource "docker_container" "modded_server" {
  name  = "modded_minecraft_${var.server_name}"
  image = "${docker_image.minecraft_image.latest}"
  ports {
    internal = 25565
    external = var.external_port_number
  }
  volumes {
    host_path      = "${local.root_path}/${var.server_name}"
    container_path = "/data"
  }

  volumes {
    host_path      = "${local.root_path}/mod_storage"
    container_path = "/modpacks"
  }

  env = [
    "EULA=TRUE",
    "TYPE=CURSEFORGE",
    "CF_SERVER_MOD=/modpacks/SkyFactory_4_Server_4.2.2.zip"
  ]
}
