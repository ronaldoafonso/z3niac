
resource "aws_iam_group" "groups" {
    for_each = toset(var.groups)
    name = each.key
}

resource "aws_iam_group_policy_attachment" "group_policies" {
    for_each = var.policies
    policy_arn = each.key
    group = each.value

    depends_on = [aws_iam_group.groups]
}

resource "aws_iam_user" "users" {
    for_each = var.users
    name = each.key
}

resource "aws_iam_access_key" "access_keys" {
    for_each = var.users
    user = each.key

    depends_on = [aws_iam_user.users]
}

resource "aws_iam_user_group_membership" "group_memberships" {
    for_each = var.users
    user = each.key
    groups = [for _,group in each.value.groups: aws_iam_group.groups[group].name]

    depends_on = [aws_iam_group.groups, aws_iam_user.users]
}
