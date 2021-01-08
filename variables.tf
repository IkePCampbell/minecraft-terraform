variable "internal_port_number" {
    type = number
    default = 25565
    description = "Default port for minecraft"
}

variable "single_host_path" {
    type = string
    default = "C:\\Users\\IsaacCampbell\\Desktop\\Minecraft Infrastructure\\server1"
    description = "Need a host path to put data in the minecraft server"
}