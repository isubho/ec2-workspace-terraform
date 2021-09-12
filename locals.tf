locals {
  yaml              = yamldecode(file("${terraform.workspace}.yaml"))
  ami               = local.yaml.ami
  ec2               = local.yaml.ec2
  network_interface = local.yaml.network_interface
  security_group    = local.yaml.security_group
  subnet            = local.yaml.subnet
  vpc               = local.yaml.vpc

  # yaml = yamldecode(file("values.yaml"))
  # env               = local.yaml.environment
  # env               = local.yaml.environment
  # ami               = local.env[terraform.workspace].ami
  # ec2               = local.env[terraform.workspace].ec2
  # network_interface = local.env[terraform.workspace].network_interface
  # security_group    = local.env[terraform.workspace].security_group
  # subnet            = local.env[terraform.workspace].subnet
  # vpc               = local.env[terraform.workspace].vpc
}
