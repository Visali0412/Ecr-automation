resource "aws_s3_bucket" "demo_terraform_s3" {
  bucket = "demo-terraform-s3"

  tags = {
    Name = "demo-terraform-s3"
  }
}
