resource "aws_iam_role" "instance_profile_role" {
  name               = var.role-name
  description        = var.role-description
  assume_role_policy = file("${path.module}/assumerole.json")

  tags = {
    name = join("-", [var.env, "vSensor"])
    env  = var.env
  }
}


resource "aws_iam_instance_profile" "instance_profile_policy" {
  name = var.role-name
  role = aws_iam_role.instance_profile_role.name
}


resource "aws_iam_role_policy" "role_policy" {
  role        = aws_iam_role.instance_profile_role.name
  name        = var.policy-name
  policy      = file("${path.module}/policy.json")
}

