## Private Server
resource "aws_instance" "ec2-server" {
  ami                         = var.ec2-ami
  instance_type               = var.ec2-type
  key_name                    = var.key_name
  user_data                   = file("${path.module}/user-data-script.cloud-init")
  associate_public_ip_address = false
  iam_instance_profile        = aws_iam_role.instance_profile_role.name

  tags = {
    Name = join("-", [var.env, "ec2-server"])
    env  = var.env
  }

  ## Root Volume
  root_block_device {
    volume_size           = 30
    volume_type           = "gp2"
    delete_on_termination = true
  }

  # the VPC subnet
  subnet_id = var.subnet_id

  # the security group
  vpc_security_group_ids = ["${aws_security_group.private-server.id}"]

}
