variable "org_id" {
  description = "Organization to create custom role"
  type        = string
}
variable "role_id" {
  description = "Identifier for custom role"
  type        = string
}
variable "title" {
  description = "Human readable title for custom role"
  type        = string
}
variable "description" {
  description = "Human readable dsecription for custom role"
  type        = string
}
variable "predefined_roles" {
  description = "List of predefined roles used to compose permissions, e.g. [\"roles/bigquery.admin\", \"roles/pubsub.admin\"]"
  type        = list
}
variable "additional_permissions" {
  description = "Additional permissions to include in custom role, e.g. [\"storage.objects.getIamPolicy\"]"
  type        = list
  default     = []
}
variable "excluded_permissions" {
  description = "Permissions to exclude from custom roles. WARNING: This may break functionality in unexpected ways"
  type        = list
  default     = []
}