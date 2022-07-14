# Retrieve the latest stack pack version
data "ec_stack" "monitor_stack_version" {
  version_regex = var.monitor_dep_version
  # the region of the monitoring deployment should be the same as the production one, because monitoring across regions is not supported yet.
  region = var.cloud_region
}

resource "ec_deployment" "monitor_example_minimal" {
  # Optional name.
  name = "${var.monitor_dep_name}-${terraform.workspace}"

  # Mandatory fields
  region                 = data.ec_stack.monitor_stack_version.region
  version                = data.ec_stack.monitor_stack_version.version
  deployment_template_id = var.monitor_template_id

  elasticsearch {
    topology {
      id         = "hot_content"
      zone_count = 1
      size       = "1g"
    }

  }

  kibana {
    topology {
      size = "1g"
    }
  }
}
