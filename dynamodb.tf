
resource "aws_dynamodb_table" "boxes_table" {
    name = "boxes"
    billing_mode = "PROVISIONED"
    read_capacity = 1
    write_capacity = 1
    hash_key = "boxname"

    attribute {
        name = "boxname"
        type = "S"
    }

    tags = {
        company = var.company
    }
}
