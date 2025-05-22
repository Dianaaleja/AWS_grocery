resource "aws_s3_bucket" "avatars" {
  bucket_prefix = "grocerymate-avatars-"

  tags = {
    Name        = "grocerymate-avatars"
    Environment = "Dev"
  }
}