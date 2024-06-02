resource "docker_image" "nginx" {
  name         = "nginx:latest"
  keep_locally = false
}

resource "docker_container" "nginx" {
  image = docker_image.nginx.image_id
  name  = var.web1_name
  ports {
    internal = 80
    external = 8000
  }
}

resource "docker_container" "nginx2" {
  image = docker_image.nginx.image_id
  name  = var.web2_name
  ports {
    internal = 80
    external = 8001
  }
}

resource "docker_container" "nginx3" {
  image = docker_image.nginx.image_id
  name  = var.web3_name
  ports {
    internal = 80
    external = 8002
  }
}

# resource "docker_container" "nginx4" {
#   image = docker_image.nginx.image_id
#   name  = "webserver4"
#   ports {
#     internal = 80
#     external = 8003
#   }
# }

# resource "docker_container" "nginx5" {
#   image = docker_image.nginx.image_id
#   name  = "webserver5"
#   ports {
#     internal = 80
#     external = 8004
#   }
# }