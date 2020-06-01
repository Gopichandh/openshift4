resource "aws_s3_bucket" "bucket" {
  bucket = "capgemini-s3"
  acl    = "private"

  tags = {
    Clustername = "antman"
    Name = "ocpops"
  }
}
