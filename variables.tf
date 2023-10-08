# @options ["url", "repository"]
variable "source_type" {
  type = string
  description = "Source type of the chart"
  default = "repository"
}

# @show_if "source_type=url"
variable "chart_url" {
  type = string
  description = "URL to download the chart"
  default = ""
}

# @show_if "source_type=repository"
variable "chart_repository" {
  type = string
  description = "Chart repository. e.g., https://charts.bitnami.com/bitnami or oci://192.168.1.100:5000/helm-charts"
  default = ""
}

# @show_if "source_type=repository"
variable "chart_name" {
  type = string
  description = "Chart name"
  default = ""
}

# @show_if "source_type=repository"
variable "chart_version" {
  type = string
  description = "Chart version"
  default = ""
}

variable "set_custom_values" {
  type = bool
  description = "Set custom values"
  default = false
}

# @show_if "set_custom_values=true"
variable "values" {
  type = map(any)
  description = "Chart values"
  default = {}
}

# @hidden
variable "walrus_metadata_namespace_name" {
  type        = string
  description = "Walrus metadata namespace name."
  default     = ""
}

# @hidden
variable "walrus_metadata_service_name" {
  type        = string
  description = "Walrus metadata service name."
  default     = ""
}
