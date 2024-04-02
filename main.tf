
module "container" {
  source = "github.com/christianwaldmann/my-terraform-modules//container?ref=v0.0.2"

  container_name = "whoami"
  image = "traefik/whoami:latest"
  ports = [
    {
      internal = 80
      external = 8080
    }
  ]
}
