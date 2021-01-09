resource "docker_image" "minecraft_image" {
  name = "itzg/minecraft-server:${var.image_tag}"
}
