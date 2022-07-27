resource "aws_ecr_repository" "hopstack-demo" {
  name                 = "your-repository-name"
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_lifecycle_policy" "hopstack-demo" {
  repository = aws_ecr_repository.hopstack-demo.name

  policy = file(".expire-untagged.json")
}
