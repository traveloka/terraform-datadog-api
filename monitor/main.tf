module "latency_p95" {
  source  = "github.com/traveloka/terraform-datadog-monitor"
  enabled = "${var.enabled}"

  product_domain = "${var.product_domain}"
  service        = "${var.service}"

  name               = "${var.product_domain} - ${var.cluster} - API Latency is High on Class: {{ classname }} Method: {{ methodname }}"
  query              = "avg(last_5m):avg:api.res.ltcy.p95{cluster:${var.cluster}} by {host,classname,methodname}"
  thresholds         = "${var.latency_p95_thresholds}"
  message            = "${var.latency_p95_message}"
  escalation_message = "${var.latency_p95_escalation_message}"

  recipients = "${var.recipients}"

  renotify_interval = "${var.renotify_interval}"
  notify_audit      = "${var.notify_audit}"
}

module "exception" {
  source  = "github.com/traveloka/terraform-datadog-monitor"
  enabled = "${var.enabled}"

  product_domain = "${var.product_domain}"
  service        = "${var.service}"

  name               = "${var.product_domain} - ${var.cluster} - API Exception is High on Class: {{ classname }} Method: {{ methodname }}"
  query              = "avg(last_5m):sum:api.res.exc.count{cluster:${var.cluster}} by {host,classname,methodname}"
  thresholds         = "${var.exception_thresholds}"
  message            = "${var.exception_message}"
  escalation_message = "${var.exception_escalation_message}"

  recipients = "${var.recipients}"

  renotify_interval = "${var.renotify_interval}"
  notify_audit      = "${var.notify_audit}"
}
