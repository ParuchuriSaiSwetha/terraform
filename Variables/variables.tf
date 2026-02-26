variable "ami-id" {
    type = string
    default = "ami-0220d79f3f480ecf5"
    description = "This is RHEL 9 bases OS"
}

variable "instance-type" {
    default = "t3.micro"
    type = string
    description = "we are taking instance as t3.micro"
}
variable "ec2_tag" {
    type =  map
    default = {
        Name = "variable-instance"
        Project = "Roboshop"
        Terraform = "true"
        Environment = "dev"
    }
}
variable "sg_name" {
    type = string
    default = "allow-all-terraform"
}
variable "sg_description" {
    default = "Allow TLS inbound traffic and all outbound traffic"
}
variable "sg_from_port" {
    default = 0
    type = number
}
variable "sg_to_port" {
    type = number
    default = 0
}
variable "sg_cidr_blocks" {
    type = list
    default = ["0.0.0.0/0"]
}
variable "sg_tag" {
    type = map
    default = {
        Name = "allow_all-terraform"
        Project = "Roboshop"
        Terraform = "true"
        Environment = "dev"
    }
}