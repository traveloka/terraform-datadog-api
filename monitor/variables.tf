variable "product_domain" {
  type        = "string"
  description = "The name of the product domain"
}

variable "service" {
  type        = "string"
  description = "The name of the service"
}

variable "cluster" {
  type        = "string"
  description = "The name of the cluster"
}

variable "latency_p95_thresholds" {
  type        = "map"
  description = "The warning and critical thresholds for API Latency monitoring"
}

variable "latency_p95_message" {
  type        = "string"
  default     = ""
  description = "The message when API Latency monitor triggered"
}

variable "latency_p95_escalation_message" {
  type        = "string"
  default     = ""
  description = "The escalation message when API Latency monitor isn't resolved for given time"
}

variable "exception_thresholds" {
  type        = "map"
  description = "The warning and critical thresholds for API Exception monitoring"
}

variable "exception_message" {
  type        = "string"
  default     = ""
  description = "The message when API Exception monitor triggered"
}

variable "exception_escalation_message" {
  type        = "string"
  default     = ""
  description = "The escalation message when API Exception monitor isn't resolved for given time"
}

variable "recipients" {
  type        = "list"
  default     = []
  description = "Notification recipients when monitor triggered"
}

variable "renotify_interval" {
  type        = "string"
  default     = "0"
  description = "Time interval in minutes which escalation_message will be sent when monitor is triggered"
}

variable "notify_audit" {
  type        = "string"
  default     = false
  description = "Whether any configuration changes should be notified"
}

variable "enabled" {
  type        = "string"
  default     = true
  description = "To enable this module"
}
