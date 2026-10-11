resource "oci_apigateway_gateway" "apigateway_gateways" {
  for_each = var.apigateway_gateways

  compartment_id             = each.value.compartment_id
  endpoint_type              = each.value.endpoint_type
  subnet_id                  = each.value.subnet_id
  certificate_id             = each.value.certificate_id
  defined_tags               = each.value.defined_tags
  display_name               = each.value.display_name
  freeform_tags              = each.value.freeform_tags
  ip_mode                    = each.value.ip_mode
  is_lock_override           = each.value.is_lock_override
  network_security_group_ids = each.value.network_security_group_ids

  dynamic "ca_bundles" {
    for_each = each.value.ca_bundles != null ? each.value.ca_bundles : []
    content {
      ca_bundle_id             = ca_bundles.value.ca_bundle_id
      certificate_authority_id = ca_bundles.value.certificate_authority_id
      type                     = ca_bundles.value.type
    }
  }

  dynamic "ipv4address_configuration" {
    for_each = each.value.ipv4address_configuration != null ? [each.value.ipv4address_configuration] : []
    content {
      reserved_ip_ids = ipv4address_configuration.value.reserved_ip_ids
    }
  }

  dynamic "ipv6address_configuration" {
    for_each = each.value.ipv6address_configuration != null ? [each.value.ipv6address_configuration] : []
    content {
      addresses    = ipv6address_configuration.value.addresses
      subnet_cidrs = ipv6address_configuration.value.subnet_cidrs
    }
  }

  dynamic "locks" {
    for_each = each.value.locks != null ? each.value.locks : []
    content {
      message = locks.value.message
      type    = locks.value.type
    }
  }

  dynamic "response_cache_details" {
    for_each = each.value.response_cache_details != null ? [each.value.response_cache_details] : []
    content {
      authentication_secret_id             = response_cache_details.value.authentication_secret_id
      authentication_secret_version_number = response_cache_details.value.authentication_secret_version_number
      connect_timeout_in_ms                = response_cache_details.value.connect_timeout_in_ms
      is_ssl_enabled                       = response_cache_details.value.is_ssl_enabled
      is_ssl_verify_disabled               = response_cache_details.value.is_ssl_verify_disabled
      read_timeout_in_ms                   = response_cache_details.value.read_timeout_in_ms
      send_timeout_in_ms                   = response_cache_details.value.send_timeout_in_ms
      dynamic "servers" {
        for_each = response_cache_details.value.servers != null ? response_cache_details.value.servers : []
        content {
          host = servers.value.host
          port = servers.value.port
        }
      }
      type = response_cache_details.value.type
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

