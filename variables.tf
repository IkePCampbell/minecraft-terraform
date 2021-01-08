variable "internal_port_number" {
  type        = number
  default     = 25565
  description = "Default port for minecraft"
}

variable "single_host_path" {
  type        = string
  default     = ""
  description = "Need a host path to put data in the minecraft server. Needs to be absolute path. "
}

variable "minecraft_image" {
  type        = string
  default     = ""
  description = "This is the image name you need to build the servers. All mods are prebuilt into the images."
}