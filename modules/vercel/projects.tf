resource "vercel_project" "website5" {
  name      = "mattgleich"
  framework = "sveltekit"
  git_repository = {
    repo = "gleich/mattglei.ch"
    type = "github"
  }
}

resource "vercel_project" "coverframe" {
  name           = "coverframe"
  framework      = "nextjs"
  root_directory = "website"
  git_repository = {
    repo = "gleich/coverframe"
    type = "github"
  }
}

resource "vercel_project" "blackbird" {
  name      = "blackbird"
  framework = "nextjs"
}
