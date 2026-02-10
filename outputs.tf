# output "azs_info" {
#     value = data.aws_availability_zones.available
  
# }

output "vpc_id" {
    value = aws_vpc.main.id
}

output "public_route_table_id" {
    value = aws_route_table.public.id
}

output "private_route_table_id" {
    value = aws_route_table.private.id
}

output "database_route_table_id" {
    value = aws_route_table.database.id
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