resource "aws_key_pair" "dev-sshkey" {
  key_name   = "${var.env}-ssh-tf"
  public_key = file("${path.module}/id_rsa.pub")
}
