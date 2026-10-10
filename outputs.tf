output "codepipeline_webhooks_id" {
  description = "Map of id values across all codepipeline_webhooks, keyed the same as var.codepipeline_webhooks"
  value       = { for k, v in aws_codepipeline_webhook.codepipeline_webhooks : k => v.id if v.id != null && length(v.id) > 0 }
}
output "codepipeline_webhooks_arn" {
  description = "Map of arn values across all codepipeline_webhooks, keyed the same as var.codepipeline_webhooks"
  value       = { for k, v in aws_codepipeline_webhook.codepipeline_webhooks : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "codepipeline_webhooks_authentication" {
  description = "Map of authentication values across all codepipeline_webhooks, keyed the same as var.codepipeline_webhooks"
  value       = { for k, v in aws_codepipeline_webhook.codepipeline_webhooks : k => v.authentication if v.authentication != null && length(v.authentication) > 0 }
}
output "codepipeline_webhooks_authentication_configuration" {
  description = "Map of authentication_configuration values across all codepipeline_webhooks, keyed the same as var.codepipeline_webhooks"
  value       = { for k, v in aws_codepipeline_webhook.codepipeline_webhooks : k => one(v.authentication_configuration) if v.authentication_configuration != null && length(v.authentication_configuration) > 0 }
  sensitive   = true
}
output "codepipeline_webhooks_filter" {
  description = "Map of filter values across all codepipeline_webhooks, keyed the same as var.codepipeline_webhooks"
  value       = { for k, v in aws_codepipeline_webhook.codepipeline_webhooks : k => v.filter if v.filter != null && length(v.filter) > 0 }
}
output "codepipeline_webhooks_name" {
  description = "Map of name values across all codepipeline_webhooks, keyed the same as var.codepipeline_webhooks"
  value       = { for k, v in aws_codepipeline_webhook.codepipeline_webhooks : k => v.name if v.name != null && length(v.name) > 0 }
}
output "codepipeline_webhooks_region" {
  description = "Map of region values across all codepipeline_webhooks, keyed the same as var.codepipeline_webhooks"
  value       = { for k, v in aws_codepipeline_webhook.codepipeline_webhooks : k => v.region if v.region != null && length(v.region) > 0 }
}
output "codepipeline_webhooks_tags" {
  description = "Map of tags values across all codepipeline_webhooks, keyed the same as var.codepipeline_webhooks"
  value       = { for k, v in aws_codepipeline_webhook.codepipeline_webhooks : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "codepipeline_webhooks_tags_all" {
  description = "Map of tags_all values across all codepipeline_webhooks, keyed the same as var.codepipeline_webhooks"
  value       = { for k, v in aws_codepipeline_webhook.codepipeline_webhooks : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}
output "codepipeline_webhooks_target_action" {
  description = "Map of target_action values across all codepipeline_webhooks, keyed the same as var.codepipeline_webhooks"
  value       = { for k, v in aws_codepipeline_webhook.codepipeline_webhooks : k => v.target_action if v.target_action != null && length(v.target_action) > 0 }
}
output "codepipeline_webhooks_target_pipeline" {
  description = "Map of target_pipeline values across all codepipeline_webhooks, keyed the same as var.codepipeline_webhooks"
  value       = { for k, v in aws_codepipeline_webhook.codepipeline_webhooks : k => v.target_pipeline if v.target_pipeline != null && length(v.target_pipeline) > 0 }
}
output "codepipeline_webhooks_url" {
  description = "Map of url values across all codepipeline_webhooks, keyed the same as var.codepipeline_webhooks"
  value       = { for k, v in aws_codepipeline_webhook.codepipeline_webhooks : k => v.url if v.url != null && length(v.url) > 0 }
}

