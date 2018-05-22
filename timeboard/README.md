terraform-datadog-timeboard-api
=================

Terraform module to create Datadog Timeboard for API.



Usage
-----

```hcl
module "timeboard_api_beical-app" {
  source         = "github.com/traveloka/terraform-datadog-api//timeboard"
  product_domain = "${var.product_domain}"
  cluster        = "${var.cluster}"
}
```

Terraform Version
-----------------

This module was created using Terraform 0.11.7. 
So to be more safe, Terraform version 0.11.7 or newer is required to use this module.

Authors
-------

* [Karsten Ari Agathon](https://github.com/karstenaa)

License
-------

Apache 2 Licensed. See LICENSE for full details.
