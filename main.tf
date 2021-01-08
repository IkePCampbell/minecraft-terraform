provider "docker" {
    host = "tcp://localhost:2375"
}

resource "docker_container" "server" {
    count = "1"
    name = "foo${count.index}"
    image = "${docker_image.minecraft_image.latest}"
    ports {
        internal = 25565
        external = "2556${count.index+5}"
    }
    volumes {
        host_path = "C:\\Users\\IsaacCampbell\\Desktop\\Minecraft Infrastructure\\server${count.index+1}"
        container_path = "/data"
    }
    env = ["EULA=TRUE"]
}


resource "docker_image" "minecraft_image" {
    name = "minecraft_server"
}




#docker run -e EULA=TRUE  -p 25565:25565 -v C:\Users\IsaacCampbell\Desktop\MinecraftDocker\server1:/data itzg/minecraft-server:latest
#docker run -e EULA=TRUE  -p 25566:25565 -v C:\Users\IsaacCampbell\Desktop\MinecraftDocker\server2:/data itzg/minecraft-server:latest
#docker run -e EULA=TRUE  -p 25567:25565 -v C:\Users\IsaacCampbell\Desktop\MinecraftDocker\server3:/data itzg/minecraft-server:latest
