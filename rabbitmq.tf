# Configure the RabbitMQ provider
provider "rabbitmq" {
  endpoint = "http://127.0.0.1:15672"
  username = var.rabbitmqUser
  password = var.rabbitmqPass
}

# Create a virtual host
resource "rabbitmq_vhost" "vhost_222" {
  name = "vhost_222"
}