data "aws_security_group" "allow_all" {
  id = local.security_group.id
}
