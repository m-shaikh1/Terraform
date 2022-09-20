resource "aws_dynamodb_table" "ShaikhDynamoDb" {
  name             = "shaikh-db"
  hash_key         = "ShaikhTableHashKey"
  write_capacity     = 20
  read_capacity      = 20
  attribute {
    name = "ShaikhTableHashKey"
    type = "S"
  }
}