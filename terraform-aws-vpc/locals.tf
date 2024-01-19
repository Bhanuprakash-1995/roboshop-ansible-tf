locals {
  name    = "${var.project_name}-${var.environment}"
  az_name = slice(data.aws_availability_zones.azs.names, 0, 2)
}
