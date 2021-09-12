resource "aws_network_interface" "kubernetes_master" {

  subnet_id       = data.aws_subnet.subnet_euw2a.id
  description     = "network interface dedicated to kubernetes master"
  private_ips     = local.network_interface.private_ips
  security_groups = [data.aws_security_group.allow_all.id]

  tags = {
    Name      = "kubernetes_master"
    terraform = "true"
  }
}
