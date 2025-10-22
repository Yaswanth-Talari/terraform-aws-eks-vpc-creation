provider "aws" {
  region = "ap-south-1"
}

resource "aws_s3_bucket" "other-bucket" {
    bucket = "myterraform-myeks-mystate-mybucket"
    
    lifecycle {
      prevent_destroy = false
    }
}

resource "aws_dynamodb_table" "my-table" {
  name         = "terraform-eks-state-locks"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  } 
}