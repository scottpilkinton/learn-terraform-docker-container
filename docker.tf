provider "docker" {
  
}

resource "docker_image" "rabbitmq" {
  name = "rabbitmq:3-management"
  keep_locally = false
}

resource "docker_container" "rabbitmq" {
  image = docker_image.rabbitmq.image_id
  name = var.container_name

ports {
    internal = 5672
    external = 5672
}
ports {
    internal = 15672
    external = 15672
    }
}