module "ec2" {
  source = "../shared-modules"

  ec2-type            = var.ec2-type
  env                 = var.env
  subnet_id           = var.subnet_id
  vpc_id              = var.vpc_id
  vpc-cidr            = var.vpc-cidr
  TGW_PREFIX          = var.TGW_PREFIX
  key_name            = var.key_name

}



