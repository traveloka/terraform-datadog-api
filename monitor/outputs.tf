output "latency_p95_name" {
  value       = "${module.latency_p95.name}"
  description = "The name of datadog monitor for API Latency"
}

output "exception_name" {
  value       = "${module.exception.name}"
  description = "The name of datadog monitor for API Exception"
}
