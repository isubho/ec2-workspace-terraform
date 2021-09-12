data "aws_ami" "kubernetes_nodes" {
  owners = [local.ami.kubernetes_nodes.owner]

  filter {
    name   = "name"
    values = [local.ami.kubernetes_nodes.name]
  }
}

output "ami" {

  # value = tomap({
  #   for k, bd in data.aws_ami.kubernetes_nodes : k => bd.id
  # })
  value = data.aws_ami.kubernetes_nodes.id
}
