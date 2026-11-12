output "repository_pages_id" {
  description = "Map of id values across all repository_pages, keyed the same as var.repository_pages"
  value       = { for k, v in github_repository_pages.repository_pages : k => v.id }
}
output "repository_pages_api_url" {
  description = "Map of api_url values across all repository_pages, keyed the same as var.repository_pages"
  value       = { for k, v in github_repository_pages.repository_pages : k => v.api_url }
}
output "repository_pages_build_status" {
  description = "Map of build_status values across all repository_pages, keyed the same as var.repository_pages"
  value       = { for k, v in github_repository_pages.repository_pages : k => v.build_status }
}
output "repository_pages_build_type" {
  description = "Map of build_type values across all repository_pages, keyed the same as var.repository_pages"
  value       = { for k, v in github_repository_pages.repository_pages : k => v.build_type }
}
output "repository_pages_cname" {
  description = "Map of cname values across all repository_pages, keyed the same as var.repository_pages"
  value       = { for k, v in github_repository_pages.repository_pages : k => v.cname }
}
output "repository_pages_custom_404" {
  description = "Map of custom_404 values across all repository_pages, keyed the same as var.repository_pages"
  value       = { for k, v in github_repository_pages.repository_pages : k => v.custom_404 }
}
output "repository_pages_html_url" {
  description = "Map of html_url values across all repository_pages, keyed the same as var.repository_pages"
  value       = { for k, v in github_repository_pages.repository_pages : k => v.html_url }
}
output "repository_pages_https_enforced" {
  description = "Map of https_enforced values across all repository_pages, keyed the same as var.repository_pages"
  value       = { for k, v in github_repository_pages.repository_pages : k => v.https_enforced }
}
output "repository_pages_public" {
  description = "Map of public values across all repository_pages, keyed the same as var.repository_pages"
  value       = { for k, v in github_repository_pages.repository_pages : k => v.public }
}
output "repository_pages_repository" {
  description = "Map of repository values across all repository_pages, keyed the same as var.repository_pages"
  value       = { for k, v in github_repository_pages.repository_pages : k => v.repository }
}
output "repository_pages_repository_id" {
  description = "Map of repository_id values across all repository_pages, keyed the same as var.repository_pages"
  value       = { for k, v in github_repository_pages.repository_pages : k => v.repository_id }
}
output "repository_pages_source" {
  description = "Map of source values across all repository_pages, keyed the same as var.repository_pages"
  value       = { for k, v in github_repository_pages.repository_pages : k => one(v.source) }
}

