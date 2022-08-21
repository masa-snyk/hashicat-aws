resource "aws_instance" "hashicat" {
  tags = {
    Name  = "${var.prefix}-hashicat-instance"
    Owner = "Masa"
  }
}
