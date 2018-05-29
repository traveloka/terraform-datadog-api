module "api" {
  source         = "../../"
  product_domain = "BEI"
  service        = "beical"
  cluster        = "beical-app"
  environment    = "production"

  recipients        = ["slack-bei", "pagerduty-bei", "bei@traveloka.com"]
  renotify_interval = 0
  notify_audit      = false

  latency_p95_thresholds = {
    critical = 1000
    warning  = 800
  }

  latency_p95_message            = "Monitor is triggered"
  latency_p95_escalation_message = "Monitor isn't resolved for given interval"

  exception_thresholds = {
    critical = 50
    warning  = 20
  }

  exception_message            = "Monitor is triggered"
  exception_escalation_message = "Monitor isn't resolved for given interval"
}
