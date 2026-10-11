variable "monitoring_dashboards" {
  description = <<EOT
Map of monitoring_dashboards, attributes below
Required:
    - dashboard_json
Optional:
    - deletion_policy
    - project
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    dashboard_json  = string
    deletion_policy = optional(string)
    project         = optional(string)
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.monitoring_dashboards : (
        can(jsondecode(v.dashboard_json))
      )
    ])
    error_message = "must be valid JSON"
  }
}

