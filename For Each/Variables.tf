/* variable "instance_type" {
    type = map
    default = {
        Reddis = "t3.micro"
        sql = "t3.small"
        frontend = "t3.micro"
        payment = "t3.micro"
    }
} */
variable "instance" {
    default = ["mysql", "reddis", "reddis", "catalogue"]
  
}
variable "domain_name" {
    default = "saiswetha.online"
}
variable "zone_id" {
    default = "Z013685220NXEUGG905TF"
}
