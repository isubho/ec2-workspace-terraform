resource "aws_key_pair" "kubernetes_ec2" {
  key_name   = "kubernetes-${terraform.workspace}"
  public_key = file("public_key.pub")
}
