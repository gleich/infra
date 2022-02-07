terraform {
  backend "remote" {
    organization = "gleich-personal"

    workspaces {
      name = "infra"
    }
  }

  required_version = ">= 0.13.0"
}
