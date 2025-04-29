resource "aws_key_pair" "inspire_ssh_key" {
  key_name   = "${var.env}-${var.project}-ssh-key"            # Name for your key pair
  public_key = file("./id_rsa.pub") # Path to your public key file
}