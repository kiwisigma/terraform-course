output "vnet_address_space_count" {
  description = "Number of CIDR blocks in vnet_address_space"
  value       = length(var.vnet_address_space)
}

output "vnet_total_addresses" {
  description = "Total addresses in the vnet's first CIDR block, based on its prefix length"
  value       = pow(2, 32 - tonumber(split("/", var.vnet_address_space[0])[1]))
}
