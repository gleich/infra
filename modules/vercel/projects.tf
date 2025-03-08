resource "vercel_project" "website" {
  name      = "website"
  framework = "nextjs"
  git_repository = {
    repo = "gleich/website"
    type = "github"
  }
}

resource "vercel_project" "website5" {
  name      = "website5"
  framework = "sveltekit"
  git_repository = {
    repo = "gleich/website5"
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
