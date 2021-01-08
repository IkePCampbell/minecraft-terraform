provider "docker" {
    host = "tcp://127.0.0.1:2375"
}

resource "docker_container" "single_server" {
    name = "minecraft_server"
    image = "${docker_image.minecraft_image.latest}"
    ports {
        internal = var.internal_port_number
        external = "25565"
    }
    volumes {
        host_path = var.single_host_path
        container_path = "/data"
    }
    env = ["EULA=TRUE"]
}


resource "docker_image" "minecraft_image" {
    name = "minecraft"
}




#docker run -e EULA=TRUE  -p 25565:25565 -v C:\Users\IsaacCampbell\Desktop\MinecraftDocker\server1:/data itzg/minecraft-server:latest
#docker run -e EULA=TRUE  -p 25566:25565 -v C:\Users\IsaacCampbell\Desktop\MinecraftDocker\server2:/data itzg/minecraft-server:latest
#docker run -e EULA=TRUE  -p 25567:25565 -v C:\Users\IsaacCampbell\Desktop\MinecraftDocker\server3:/data itzg/minecraft-server:latest
