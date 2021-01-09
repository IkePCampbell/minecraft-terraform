output "minecraft_server_address" {
  value       = docker_container.single_server.ports[0]
  description = "Port Number you are running the server on"
}