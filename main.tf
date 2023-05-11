resource "github_repository" "example" {
  name        = "example-terraform-github-created-new"
  description = "My awesome codebase"

  visibility = "public"
}
