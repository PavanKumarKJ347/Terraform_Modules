resource "aws_instance" "ec2_server" {
  count             = var.ec2_server_count

  ami               = var.ami
  instance_type     = var.instance_type
  availability_zone = var.availability_zone
  key_name          = var.key_name
  subnet_id         = var.subnet_id

  tags = merge({ "Name" : var.ec2_server_name }, var.tags)
}