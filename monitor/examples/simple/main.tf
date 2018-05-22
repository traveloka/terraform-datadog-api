module "beical_app_monitor_api" {
  source         = "../../"
  product_domain = "BEI"
  service        = "beical"
  cluster        = "beical-app"

  latency_p95_thresholds = {
    critical = 1000
    warning  = 800
  }

  exception_thresholds = {
    critical = 50
    warning  = 20
  }

  recipients = ["slack-bei", "pagerduty-bei", "bei@traveloka.com"]
}
