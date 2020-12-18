variable "AWS_REGION" {
  description = "Region everything is executed in."
  default     = "us-east-1"
}

variable "vpc-cidr" {
  description = "VPC CIDR Block"
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

variable "ec2-ami" {
  description = "Ami Name"
  default     = "ami-0739f8cdb239fe9ae"
}

variable "key_name" {
  description = "Private key Name"
}

variable "role-name" {
  description = "darktrace-vsensor-role"
  default     = "vSensor-role"
}

variable "role-description" {
  default = "Allows EC2 instances to call AWS services on your behalf. Provides Darktrace access to Secrets Manager"
}

variable "policy-name" {
  description = "Darktrace vSensor policy to access Secrets Manager"
  default     = "vSensor-policy"
}



variable "policy-description" {
  default = "Darktrace vSensor policy to access Secrets Manager"
}


