output "apigateway_gateways_id" {
  description = "Map of id values across all apigateway_gateways, keyed the same as var.apigateway_gateways except keys with no id are omitted"
  value       = { for k, v in oci_apigateway_gateway.apigateway_gateways : k => v.id if v.id != null && length(v.id) > 0 }
}
output "apigateway_gateways_ca_bundles" {
  description = "Map of ca_bundles values across all apigateway_gateways, keyed the same as var.apigateway_gateways except keys with no ca_bundles are omitted"
  value       = { for k, v in oci_apigateway_gateway.apigateway_gateways : k => v.ca_bundles if v.ca_bundles != null && length(v.ca_bundles) > 0 }
}
output "apigateway_gateways_certificate_id" {
  description = "Map of certificate_id values across all apigateway_gateways, keyed the same as var.apigateway_gateways except keys with no certificate_id are omitted"
  value       = { for k, v in oci_apigateway_gateway.apigateway_gateways : k => v.certificate_id if v.certificate_id != null && length(v.certificate_id) > 0 }
}
output "apigateway_gateways_compartment_id" {
  description = "Map of compartment_id values across all apigateway_gateways, keyed the same as var.apigateway_gateways except keys with no compartment_id are omitted"
  value       = { for k, v in oci_apigateway_gateway.apigateway_gateways : k => v.compartment_id if v.compartment_id != null && length(v.compartment_id) > 0 }
}
output "apigateway_gateways_defined_tags" {
  description = "Map of defined_tags values across all apigateway_gateways, keyed the same as var.apigateway_gateways except keys with no defined_tags are omitted"
  value       = { for k, v in oci_apigateway_gateway.apigateway_gateways : k => v.defined_tags if v.defined_tags != null && length(v.defined_tags) > 0 }
}
output "apigateway_gateways_display_name" {
  description = "Map of display_name values across all apigateway_gateways, keyed the same as var.apigateway_gateways except keys with no display_name are omitted"
  value       = { for k, v in oci_apigateway_gateway.apigateway_gateways : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "apigateway_gateways_endpoint_type" {
  description = "Map of endpoint_type values across all apigateway_gateways, keyed the same as var.apigateway_gateways except keys with no endpoint_type are omitted"
  value       = { for k, v in oci_apigateway_gateway.apigateway_gateways : k => v.endpoint_type if v.endpoint_type != null && length(v.endpoint_type) > 0 }
}
output "apigateway_gateways_freeform_tags" {
  description = "Map of freeform_tags values across all apigateway_gateways, keyed the same as var.apigateway_gateways except keys with no freeform_tags are omitted"
  value       = { for k, v in oci_apigateway_gateway.apigateway_gateways : k => v.freeform_tags if v.freeform_tags != null && length(v.freeform_tags) > 0 }
}
output "apigateway_gateways_hostname" {
  description = "Map of hostname values across all apigateway_gateways, keyed the same as var.apigateway_gateways except keys with no hostname are omitted"
  value       = { for k, v in oci_apigateway_gateway.apigateway_gateways : k => v.hostname if v.hostname != null && length(v.hostname) > 0 }
}
output "apigateway_gateways_ip_addresses" {
  description = "Map of ip_addresses values across all apigateway_gateways, keyed the same as var.apigateway_gateways except keys with no ip_addresses are omitted"
  value       = { for k, v in oci_apigateway_gateway.apigateway_gateways : k => v.ip_addresses if v.ip_addresses != null && length(v.ip_addresses) > 0 }
}
output "apigateway_gateways_ip_mode" {
  description = "Map of ip_mode values across all apigateway_gateways, keyed the same as var.apigateway_gateways except keys with no ip_mode are omitted"
  value       = { for k, v in oci_apigateway_gateway.apigateway_gateways : k => v.ip_mode if v.ip_mode != null && length(v.ip_mode) > 0 }
}
output "apigateway_gateways_ipv4address_configuration" {
  description = "Map of ipv4address_configuration values across all apigateway_gateways, keyed the same as var.apigateway_gateways except keys with no ipv4address_configuration are omitted"
  value       = { for k, v in oci_apigateway_gateway.apigateway_gateways : k => one(v.ipv4address_configuration) if v.ipv4address_configuration != null && length(v.ipv4address_configuration) > 0 }
}
output "apigateway_gateways_ipv6address_configuration" {
  description = "Map of ipv6address_configuration values across all apigateway_gateways, keyed the same as var.apigateway_gateways except keys with no ipv6address_configuration are omitted"
  value       = { for k, v in oci_apigateway_gateway.apigateway_gateways : k => one(v.ipv6address_configuration) if v.ipv6address_configuration != null && length(v.ipv6address_configuration) > 0 }
}
output "apigateway_gateways_is_lock_override" {
  description = "Map of is_lock_override values across all apigateway_gateways, keyed the same as var.apigateway_gateways except keys with no is_lock_override are omitted"
  value       = { for k, v in oci_apigateway_gateway.apigateway_gateways : k => v.is_lock_override if v.is_lock_override != null }
}
output "apigateway_gateways_lifecycle_details" {
  description = "Map of lifecycle_details values across all apigateway_gateways, keyed the same as var.apigateway_gateways except keys with no lifecycle_details are omitted"
  value       = { for k, v in oci_apigateway_gateway.apigateway_gateways : k => v.lifecycle_details if v.lifecycle_details != null && length(v.lifecycle_details) > 0 }
}
output "apigateway_gateways_locks" {
  description = "Map of locks values across all apigateway_gateways, keyed the same as var.apigateway_gateways except keys with no locks are omitted"
  value       = { for k, v in oci_apigateway_gateway.apigateway_gateways : k => v.locks if v.locks != null && length(v.locks) > 0 }
}
output "apigateway_gateways_network_security_group_ids" {
  description = "Map of network_security_group_ids values across all apigateway_gateways, keyed the same as var.apigateway_gateways except keys with no network_security_group_ids are omitted"
  value       = { for k, v in oci_apigateway_gateway.apigateway_gateways : k => v.network_security_group_ids if v.network_security_group_ids != null && length(v.network_security_group_ids) > 0 }
}
output "apigateway_gateways_response_cache_details" {
  description = "Map of response_cache_details values across all apigateway_gateways, keyed the same as var.apigateway_gateways except keys with no response_cache_details are omitted"
  value       = { for k, v in oci_apigateway_gateway.apigateway_gateways : k => one(v.response_cache_details) if v.response_cache_details != null && length(v.response_cache_details) > 0 }
}
output "apigateway_gateways_state" {
  description = "Map of state values across all apigateway_gateways, keyed the same as var.apigateway_gateways except keys with no state are omitted"
  value       = { for k, v in oci_apigateway_gateway.apigateway_gateways : k => v.state if v.state != null && length(v.state) > 0 }
}
output "apigateway_gateways_subnet_id" {
  description = "Map of subnet_id values across all apigateway_gateways, keyed the same as var.apigateway_gateways except keys with no subnet_id are omitted"
  value       = { for k, v in oci_apigateway_gateway.apigateway_gateways : k => v.subnet_id if v.subnet_id != null && length(v.subnet_id) > 0 }
}
output "apigateway_gateways_system_tags" {
  description = "Map of system_tags values across all apigateway_gateways, keyed the same as var.apigateway_gateways except keys with no system_tags are omitted"
  value       = { for k, v in oci_apigateway_gateway.apigateway_gateways : k => v.system_tags if v.system_tags != null && length(v.system_tags) > 0 }
}
output "apigateway_gateways_time_created" {
  description = "Map of time_created values across all apigateway_gateways, keyed the same as var.apigateway_gateways except keys with no time_created are omitted"
  value       = { for k, v in oci_apigateway_gateway.apigateway_gateways : k => v.time_created if v.time_created != null && length(v.time_created) > 0 }
}
output "apigateway_gateways_time_updated" {
  description = "Map of time_updated values across all apigateway_gateways, keyed the same as var.apigateway_gateways except keys with no time_updated are omitted"
  value       = { for k, v in oci_apigateway_gateway.apigateway_gateways : k => v.time_updated if v.time_updated != null && length(v.time_updated) > 0 }
}

