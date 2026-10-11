variable "apigateway_gateways" {
  description = <<EOT
Map of apigateway_gateways, attributes below
Required:
    - compartment_id
    - endpoint_type
    - subnet_id
Optional:
    - certificate_id
    - defined_tags
    - display_name
    - freeform_tags
    - ip_mode
    - is_lock_override
    - network_security_group_ids
    - ca_bundles (block):
        - ca_bundle_id (optional)
        - certificate_authority_id (optional)
        - type (required)
    - ipv4address_configuration (block):
        - reserved_ip_ids (optional)
    - ipv6address_configuration (block):
        - addresses (optional)
        - subnet_cidrs (optional)
    - locks (block):
        - message (optional)
        - type (required)
    - response_cache_details (block):
        - authentication_secret_id (optional)
        - authentication_secret_version_number (optional)
        - connect_timeout_in_ms (optional)
        - is_ssl_enabled (optional)
        - is_ssl_verify_disabled (optional)
        - read_timeout_in_ms (optional)
        - send_timeout_in_ms (optional)
        - servers (optional, block):
            - host (optional)
            - port (optional)
        - type (required)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    compartment_id             = string
    endpoint_type              = string
    subnet_id                  = string
    certificate_id             = optional(string)
    defined_tags               = optional(map(string))
    display_name               = optional(string)
    freeform_tags              = optional(map(string))
    ip_mode                    = optional(string)
    is_lock_override           = optional(bool)
    network_security_group_ids = optional(set(string))
    ca_bundles = optional(list(object({
      ca_bundle_id             = optional(string)
      certificate_authority_id = optional(string)
      type                     = string
    })))
    ipv4address_configuration = optional(object({
      reserved_ip_ids = optional(list(string))
    }))
    ipv6address_configuration = optional(object({
      addresses    = optional(list(string))
      subnet_cidrs = optional(list(string))
    }))
    locks = optional(list(object({
      message = optional(string)
      type    = string
    })))
    response_cache_details = optional(object({
      authentication_secret_id             = optional(string)
      authentication_secret_version_number = optional(string)
      connect_timeout_in_ms                = optional(number)
      is_ssl_enabled                       = optional(bool)
      is_ssl_verify_disabled               = optional(bool)
      read_timeout_in_ms                   = optional(number)
      send_timeout_in_ms                   = optional(number)
      servers = optional(list(object({
        host = optional(string)
        port = optional(number)
      })))
      type = string
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.apigateway_gateways : (
        v.ca_bundles == null || alltrue([for item in v.ca_bundles : (contains([for v in ["CA_BUNDLE", "CERTIFICATE_AUTHORITY"] : lower(v)], lower(item.type)))])
      )
    ])
    error_message = "must be one of: \"CA_BUNDLE\", \"CERTIFICATE_AUTHORITY\""
  }
  validation {
    condition = alltrue([
      for k, v in var.apigateway_gateways : (
        v.response_cache_details == null || (contains([for v in ["EXTERNAL_RESP_CACHE", "NONE"] : lower(v)], lower(v.response_cache_details.type)))
      )
    ])
    error_message = "must be one of: \"EXTERNAL_RESP_CACHE\", \"NONE\""
  }
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

