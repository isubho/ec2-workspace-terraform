data "aws_subnet" "subnet_euw2a" {

  # id       = each.key.security_group.id
  id = local.subnet.subnet_a_id
}

data "aws_subnet" "subnet_euw2b" {

  id = local.subnet.subnet_b_id
}

data "aws_subnet" "subnet_euw2c" {
  id = local.subnet.subnet_c_id
}
