variable "sg_name" {

}
variable "project_name" {

}
variable "environment" {

}
variable "vpc_id" {

}
variable "sg_description" {
  type = string
}
variable "common_tags" {
  type    = map(any)
  default = {}
}
variable "sg_tags" {
  type    = map(any)
  default = {}
}

variable "sg_ingress_rules" {
  type    = list(any)
  default = []
}
