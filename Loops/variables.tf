variable "instance" {
    type = list
    default = ["mongodb", "redis", "catalogue", "cart", "payments", "frontend", "user", "rabbitmq", "shipments", "mysql"]
}
#we have to take the zone id from aws account from route53 our id
variable "zone_id" {
    default = "Z013685220NXEUGG905TF"
}
# domain name we have to give our domain name which we have hosted and attached to route 53
 variable "domain_name" {
    default = "saiswetha.online"
}
variable "fruit_list" {
    type = list(string)
    default = ["apple", "banana", "orange", "banana", "Grapes"]
}
variable "fruit_set" {
    type = set(string)
    default = ["apple", "banana", "orange", "banana", "Grapes"]
}
