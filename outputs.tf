output "name" {
  description = "The name of the role in the format `organizations/{{org_id}}/roles/{{role_id}}`. Like `id`, this field can be used as a reference in other resources such as IAM role bindings."
  value       = google_organization_iam_custom_role.custom_role.name
}

output "id" {
  description = "an identifier for the resource with the format `organizations/{{org_id}}/roles/{{role_id}}`"
  value       = google_organization_iam_custom_role.custom_role.id
}
