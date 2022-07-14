# --- general settings vars --- 

variable "api_key" {
  description = "API key to manage the deployments"
  default     = "<API_KEY>"
  nullable    = false
  type        = string
}

variable "cloud_region" {
  description = "The cloud region for the deployment to create"
  default     = "gcp-europe-west4"
  nullable    = false
  type        = string
}

# ---  production deployment vars ---

variable "prod_dep_version" {
  description = "specify the stack version to deploy on the production cluser — latest, e.g: latest, latest patch (8.3.?), etc."
  default     = "latest"
  nullable    = false
  type        = string
}

variable "prod_dep_name" {
  description = "The name of the deployment to create"
  default     = "prod-dep"
  nullable    = false
  type        = string
}


variable "prod_template_id" {
  description = "The template_id to be applied. Find them all here # https://www.elastic.co/guide/en/cloud/current/ec-regions-templates-instances.html"
  default     = "gcp-storage-optimized"
  nullable    = false
  type        = string
}

# --- exsiting production deployment vars ---

variable "existing_prod_dep_version" {
  description = "specify the stack version to deploy on the production cluser — latest, e.g: latest, latest patch (8.3.?), etc."
  default     = "latest"
  nullable    = false
  type        = string
}

variable "existing_prod_dep_name" {
  description = "The name of the deployment to create"
  default     = "existing-prod-dep"
  nullable    = false
  type        = string
}


variable "existing_prod_template_id" {
  description = "The template_id to be applied. Find them all here # https://www.elastic.co/guide/en/cloud/current/ec-regions-templates-instances.html"
  default     = "gcp-storage-optimized"
  nullable    = false
  type        = string
}

# ---  monitoring deployment vars ---

variable "monitor_dep_version" {
  description = "specify the stack version to deploy on the monitoring cluster — e.g: latest, latest patch (8.3.?), etc."
  default     = "latest"
  nullable    = false
  type        = string
}

variable "monitor_dep_name" {
  description = "The name of the deployment to create"
  default     = "monitoring-dep"
  nullable    = false
  type        = string
}

variable "monitor_template_id" {
  description = "The template_id to be applied. Find them all here # https://www.elastic.co/guide/en/cloud/current/ec-regions-templates-instances.html"
  default     = "gcp-storage-optimized"
  nullable    = false
  type        = string
}

