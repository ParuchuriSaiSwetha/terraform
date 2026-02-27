resource "aws_instance" "terraform" {
  count = 10
  ami                    = "ami-0220d79f3f480ecf5"
  instance_type          = "t3.micro"
  vpc_security_group_ids = [aws_security_group.allow_all_traffic.id]

  tags = {
    Name        = var.instance[count.index]
    Environment = "dev"
    Project     = "Roboshop"
  }
}

resource "aws_security_group" "allow_all_traffic" {
  name        = "Allow_all_roboshop"
  description = "It will allow all traffic for inbound and outbound"

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  ingress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name        = "Allow_all_traffic"
    Environment = "dev"
    Project     = "Roboshop"
  }
}
