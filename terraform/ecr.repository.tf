resource "aws_ecr_repository" "apps" {
  count                = length(var.ecr_repositories)
  name                 = var.ecr_repositories[count.index].name
  image_tag_mutability = var.ecr_repositories[count.index].image_tag_mutability
  force_delete         = true

  #   image_scanning_configuration {
  #     scan_on_push = true
  #   }
}
