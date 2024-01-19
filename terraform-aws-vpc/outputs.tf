output "azs" {
  value = data.aws_availability_zones.azs.names
}
output "vpc_id" {
  value = aws_vpc.main.id
}
output "public_subnet_ids" {
  value = aws_subnet.public[*].id
}

output "private_subnet_ids" {
  value = aws_subnet.private[*].id
}

output "database_subnet_ids" {
  value = aws_subnet.database[*].id
}

output "database_group_subnet_ids" {
  value = aws_db_subnet_group.db_subnets_group
}

output "default_vpc_id" {
  value = data.aws_vpc.default.id
}
