variable "codepipeline_webhooks" {
  description = <<EOT
Map of codepipeline_webhooks, attributes below
Required:
    - authentication
    - name
    - target_action
    - target_pipeline
    - filter (block):
        - json_path (required)
        - match_equals (required)
Optional:
    - region
    - tags
    - tags_all
    - authentication_configuration (block):
        - allowed_ip_range (optional)
        - secret_token (optional)
EOT

  type = map(object({
    authentication  = string
    name            = string
    target_action   = string
    target_pipeline = string
    region          = optional(string)
    tags            = optional(map(string))
    tags_all        = optional(map(string))
    filter = list(object({
      json_path    = string
      match_equals = string
    }))
    authentication_configuration = optional(object({
      allowed_ip_range = optional(string)
      secret_token     = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.codepipeline_webhooks : (
        length(v.filter) >= 1 && length(v.filter) <= 5
      )
    ])
    error_message = "Each filter list must contain between 1 and 5 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.codepipeline_webhooks : (
        v.authentication_configuration == null || (v.authentication_configuration.secret_token == null || (length(v.authentication_configuration.secret_token) >= 1 && length(v.authentication_configuration.secret_token) <= 100))
      )
    ])
    error_message = "must be between 1 and 100 characters"
  }
  # Note: 5 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

