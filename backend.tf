terraform {
  backend "remote" {
    organization = "gleich-personal"

    workspaces {
      name = "dns"
    }
  }

  required_version = ">= 0.13.0"
}
