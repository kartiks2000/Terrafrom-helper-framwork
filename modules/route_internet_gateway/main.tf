resource "aws_route" "r" {
  route_table_id            = var.route_table_id
  destination_cidr_block    = var.destination_cidr
  gateway_id = var.internet_gateway_id
}