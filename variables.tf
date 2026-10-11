variable "repository_pages" {
  description = <<EOT
Map of repository_pages, attributes below
Required:
    - repository
Optional:
    - build_type
    - cname
    - https_enforced
    - public
    - source (block):
        - branch (required)
        - path (optional)
EOT

  type = map(object({
    repository     = string
    build_type     = optional(string)
    cname          = optional(string)
    https_enforced = optional(bool)
    public         = optional(bool)
    source = optional(object({
      branch = string
      path   = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.repository_pages : (
        v.build_type == null || (contains(["legacy", "workflow"], v.build_type))
      )
    ])
    error_message = "must be one of: legacy, workflow"
  }
}

