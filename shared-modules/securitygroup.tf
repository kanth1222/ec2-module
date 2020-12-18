############################ EC2 Server Security Group ########################
resource "aws_security_group" "private-server" {
  vpc_id      = var.vpc_id
  name        = join("-", [var.env, "private-sg"])
  description = "Security group that allows needed ports and all egress traffic for EC2 Server"

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    description = "ssh port"
    cidr_blocks = [var.TGW_PREFIX]
  }

  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    description = "ssh port"
    cidr_blocks = [var.vpc-cidr]
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = [var.vpc-cidr]
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = [var.TGW_PREFIX]
  }


  ingress {
    from_port   = 4789
    to_port     = 4789
    protocol    = "UDP"
    cidr_blocks = [var.vpc-cidr]
  }

  ingress {
    from_port   = 4789
    to_port     = 4789
    protocol    = "UDP"
    cidr_blocks = [var.TGW_PREFIX]
  }


  tags = {
    Name = join("-", [var.env, "ec2-server"])
    env  = var.env
  }
}




