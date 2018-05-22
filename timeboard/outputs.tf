output "title" {
  value       = "${join(",", datadog_timeboard.api.*.title)}"
  description = "The title of datadog timeboard for API"
}
