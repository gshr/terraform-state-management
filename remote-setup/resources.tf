resource "aws_s3_bucket" "s3_state_bucket" {
    bucket  = "aws-state-bucket-sb2"
}

resource "aws_s3_bucket" "s3_state_bucket2" {
    bucket  = "aws-state-bucket-sb3"
}
