resource "aws_s3_bucket" "s3_state_bucket" {
    bucket  = "aws-state-bucket-sb1"
}


resource "aws_s3_bucket_versioning" "versioning_example" {
  bucket = aws_s3_bucket.s3_state_bucket.id
  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_dynamodb_table" "dynamodb_state_table" {
    name = "dynamodb_state_table"
    billing_mode = "PAY_PER_REQUEST"
    hash_key     = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
  
}