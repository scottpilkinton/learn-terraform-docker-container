variable "container_name" {
    description = "Value of the name for the Docker Container"
    type = string
    default = "RabbitMQ"
}

variable "rabbitmqUser" {
    description = "Management username"
    type = string
}

variable "rabbitmqPass" {
    description = "Management password"
    type = string
}