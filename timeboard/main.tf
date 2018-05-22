resource "datadog_timeboard" "api" {
  count = "${var.enabled}"

  title       = "${var.product_domain} - ${var.cluster} - API"
  description = "A generated timeboard for API"

  template_variable {
    default = "${var.cluster}"
    name    = "cluster"
    prefix  = "cluster"
  }

  template_variable {
    default = "*"
    name    = "classname"
    prefix  = "classname"
  }

  template_variable {
    default = "*"
    name    = "methodname"
    prefix  = "methodname"
  }

  graph {
    title     = "API Request Count"
    viz       = "timeseries"
    autoscale = true

    request {
      q    = "sum:api.req.count{$cluster} by {host,classname,methodname}"
      type = "line"
    }
  }

  graph {
    title     = "API Response Count"
    viz       = "timeseries"
    autoscale = true

    request {
      q    = "sum:api.res.count{$cluster} by {host,classname,methodname}"
      type = "line"
    }
  }

  graph {
    title     = "API Response Latency 95th Percentile"
    viz       = "timeseries"
    autoscale = true

    request {
      q    = "sum:api.res.ltcy.p95{$cluster} by {host,classname,methodname}"
      type = "line"
    }
  }

  graph {
    title     = "API Response Exception Count"
    viz       = "timeseries"
    autoscale = true

    request {
      q    = "sum:api.res.exc.count{$cluster} by {host,classname,methodname}"
      type = "line"
    }
  }
}
