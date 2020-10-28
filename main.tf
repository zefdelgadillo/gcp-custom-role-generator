data "google_iam_role" "role_info" {
  for_each = toset(var.predefined_roles)
  name     = each.value
}

locals {
  role_permissions = concat(flatten(values(data.google_iam_role.role_info)[*].included_permissions), var.additional_permissions)
  permissions = [
    for permission in local.role_permissions :
    permission if ! contains(var.excluded_permissions, permission)
  ]
}

resource "google_organization_iam_custom_role" "lab_user" {
  org_id      = var.org_id
  role_id     = var.role_id
  title       = var.title
  description = var.description
  permissions = local.permissions
}

output "role_name" {
  description = "Custom role name"
  value       = google_organization_iam_custom_role.lab_user.name
}
