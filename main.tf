resource "helm_release" "service" {
  namespace = coalesce(try(var.name, null), try(var.walrus_metadata_service_name, null), try(var.context["resource"]["name"], null))
  name      = coalesce(try(var.namespace, null), try(var.walrus_metadata_namespace_name, null), try(var.context["environment"]["namespace"], null))
  wait      = false

  repository = var.chart_repository
  chart = local.chart
  version = var.chart_version

  values = [
    yamlencode(var.values),
  ]
}

locals {
  chart     = coalesce(var.chart_url, var.chart_name)
}
