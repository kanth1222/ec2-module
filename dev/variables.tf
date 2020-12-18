variable "AWS_REGION" {
  description = "Region everything is executed in."
  default     = "us-east-1"
}

variable "vpc-cidr" {
  description = "VPC CIDR Block for sandbox environment"
}

variable "TGW_PREFIX" {
  description = "TGW_prefix for Dev environment"
}

variable "vpc_id" {
  description = "VPC CIDR Block"
}
variable "env" {
  description = "ENV Name"
}
variable "subnet_id" {
  description = "subnet_id"
}
variable "ec2-type" {
  description = "Private EC2 instance type"
}
variable "key_name" {
  description = "Private key Name"
}






