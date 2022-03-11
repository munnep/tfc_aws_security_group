resource "aws_security_group" "sg_test_sentinel" {
  name        = "sg_test_sentinel"
  description = "sg_test_sentinel"

  ingress {
    description = "ssh from internet"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "sg_test_sentinel"
  }
}