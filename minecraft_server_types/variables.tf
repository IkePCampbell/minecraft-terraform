variable "external_port_number" {
  type        = number
  default     = 25565
  description = "Port you want to expose minecraft on your machine"
}

variable "server_name" {
  type        = string
  default     = ""
  description = "Name of folder minecraft will store data in"
}

variable "minecraft_image" {
  type        = string
  default     = ""
  description = "This is the image name you need to build the servers. All mods are prebuilt into the images."
}

variable "image_tag" {
  type        = string
  default     = "latest"
  description = "The docker image has a lot of specific tags. See them all here: https://hub.docker.com/r/itzg/minecraft-server"
}