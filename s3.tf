# This file contains the S3 bucket resource for storing avatars.
resource "aws_s3_bucket" "avatars" {
  bucket_prefix = "grocerymate-avatars-"

  tags = {
    Name        = "grocerymate-avatars"
    Environment = "Dev"
  }
}