resource "github_repository_pages" "repository_pages" {
  for_each = var.repository_pages

  repository     = each.value.repository
  build_type     = each.value.build_type
  cname          = each.value.cname
  https_enforced = each.value.https_enforced
  public         = each.value.public

  dynamic "source" {
    for_each = each.value.source != null ? [each.value.source] : []
    content {
      branch = source.value.branch
      path   = source.value.path
    }
  }
}

