data "aws_ssm_parameter" "vpc_id" {
  name = "/${var.project_name}/${var.environment}/vpc_id"
}

data "aws_ssm_parameter" "default_vpc_id" {
  name = "/${var.project_name}/${var.environment}/default_vpc_id"
}
