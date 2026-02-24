resource "aws_instance" "my_terraform" {
  ami           = "ami-0220d79f3f480ecf5"
  instance_type = "t3.micro"
  vpc_security_group_ids = [aws_security_group.allow_tls.id]

  tags = {
    Name = "terraform"
    Project = "Roboshop"
  }
}

resource "aws_security_group" "allow_tls" {
  name        = "allow_all-terraform" #this is for AWS
  description = "Allow TLS inbound traffic and all outbound traffic"
  
  egress { #outbound
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  ingress { #inbound
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "allow_all-terraform"
  }
}