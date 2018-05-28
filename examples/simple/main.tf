module "api" {
  source         = "../../"
  product_domain = "BEI"
  service        = "beical"
  cluster        = "beical-app"
  environment    = "production"

  recipients = ["slack-bei", "pagerduty-bei", "bei@traveloka.com"]

  latency_p95_thresholds = {
    critical = 1000
    warning  = 800
  }

  exception_thresholds = {
    critical = 50
    warning  = 20
  }
}
