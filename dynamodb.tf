resource "aws_dynamodb_table" "collaborative-filtering-cache" {
  name           = "collaborative-filtering-cache-${var.stage}"
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "user_id"

  attribute {
    name = "user_id"
    type = "S"
  }

  tags = {
    Name        = "collaborative-filtering-cache-${var.stage}"
    Environment = "dev"
  }
}
