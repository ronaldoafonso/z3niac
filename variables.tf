
variable "region" {
    description = "AWS region"
    type = string
}

variable "company" {
    description = "Company name for this project"
    type = string
}

variable "groups" {
    description = "AWS IAM groups"
    type = list
}

variable "policies" {
    description = "AWS Group policies"
    type = map
}

variable "users" {
    description = "AWS IAM users"
    type = map
}
