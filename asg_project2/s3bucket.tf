resource "aws_s3_bucket" "s3bucket-roland93-archie" {
  bucket = var.bucket

  tags = {
    Name = var.name
  }
}

resource "aws_s3_bucket_versioning" "store-versions" {
  bucket = var.bucket
  versioning_configuration {
    status = "Enabled"
  }
}