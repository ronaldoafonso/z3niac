
region = "us-east-2"

company = "z3n"

groups = [
    "z3n"
]

policies = {
    "arn:aws:iam::aws:policy/AmazonDynamoDBFullAccess" = "z3n"
    "arn:aws:iam::aws:policy/AmazonS3FullAccess" = "z3n"
}

users = {
    z3n = {
        groups = ["z3n"]
    }
}
