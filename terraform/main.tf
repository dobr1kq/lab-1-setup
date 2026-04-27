resource "vercel_project" "lab_deployment" {
  name      = "terraform-deployment"
  framework = "nextjs"
  git_repository = {
    type = "github"
    repo = "dobr1kq/lab-1-setup"  # Replace with your actual GitHub username and repo name
  }
}

resource "vercel_project_domain" "custom_domain" {
  project_id = vercel_project.lab_deployment.id
  domain     = "${var.student_id}.vercel.app"
}