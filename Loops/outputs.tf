output "Roboshop_instance" {
  value = aws_instance.terraform
  description = "description"
} 

output "fruit_list" {
    value = var.fruit_list
}

output "fruit_set" {
    value = var.fruit_set
}