output "monitoring_dashboards_id" {
  description = "Map of id values across all monitoring_dashboards, keyed the same as var.monitoring_dashboards except keys with no id are omitted"
  value       = { for k, v in google_monitoring_dashboard.monitoring_dashboards : k => v.id if v.id != null && length(v.id) > 0 }
}
output "monitoring_dashboards_dashboard_json" {
  description = "Map of dashboard_json values across all monitoring_dashboards, keyed the same as var.monitoring_dashboards except keys with no dashboard_json are omitted"
  value       = { for k, v in google_monitoring_dashboard.monitoring_dashboards : k => v.dashboard_json if v.dashboard_json != null && length(v.dashboard_json) > 0 }
}
output "monitoring_dashboards_deletion_policy" {
  description = "Map of deletion_policy values across all monitoring_dashboards, keyed the same as var.monitoring_dashboards except keys with no deletion_policy are omitted"
  value       = { for k, v in google_monitoring_dashboard.monitoring_dashboards : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "monitoring_dashboards_project" {
  description = "Map of project values across all monitoring_dashboards, keyed the same as var.monitoring_dashboards except keys with no project are omitted"
  value       = { for k, v in google_monitoring_dashboard.monitoring_dashboards : k => v.project if v.project != null && length(v.project) > 0 }
}

