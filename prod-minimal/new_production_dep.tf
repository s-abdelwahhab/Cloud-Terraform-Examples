# Retrieve the latest stack pack version
data "ec_stack" "prod_stack_version" {
  version_regex = var.prod_dep_version
  # the region of the monitoring deployment should be the same as the production one, because monitoring across regions is not supported yet.
  region = var.cloud_region
}

# Create an Elastic Cloud deployment
resource "ec_deployment" "prod_example_minimal" {
  
  depends_on = [
    ec_deployment.monitor_example_minimal
  ]
  # Optional name.
  name = "${var.prod_dep_name}-${terraform.workspace}"

  # Mandatory fields
  region                 = data.ec_stack.prod_stack_version.region
  version                = data.ec_stack.prod_stack_version.version
  deployment_template_id = var.prod_template_id

  elasticsearch {
    topology {
      id         = "hot_content"
      zone_count = 1
      size       = "1g"
    }

    config {
      user_settings_yaml = data.template_file.prod_es_config.rendered
    }
  }

  kibana {
    topology {
      size = "1g"
    }
    config {
      user_settings_yaml = data.template_file.prod_kb_config.rendered
    }
  }

  observability {
    deployment_id = ec_deployment.monitor_example_minimal.id
  }
}


data "template_file" "prod_es_config" {
  template = file("./user_configs/production_dep/elasticsearch.yml")
}

data "template_file" "prod_kb_config" {
  template = file("./user_configs/production_dep/kibana.yml")
}
