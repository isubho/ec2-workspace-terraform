resource "aws_instance" "kuberntes-master" {
  ami = data.aws_ami.kubernetes_nodes.id

  instance_type = local.ec2.instance_type

  key_name = aws_key_pair.kubernetes_ec2.key_name

  network_interface {
    network_interface_id = aws_network_interface.kubernetes_master.id
    device_index         = 0
  }

  user_data = file("startup.txt")

  tags = {
    Name      = "kubernetes_master"
    terraform = "true"
  }
}
