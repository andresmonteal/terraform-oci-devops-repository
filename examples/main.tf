// Copyright (c) 2018, 2021, Oracle and/or its affiliates.

module "code_repos" {
  source = "../"

  for_each = var.repositories

  tenancy_ocid  = var.tenancy_ocid
  compartment   = each.value["compartment"]
  name          = each.key
  type          = each.value["type"]
  project_name  = each.value["project_name"]
  description   = lookup(each.value, "description", "default description")
  freeform_tags = lookup(each.value, "freeform_tags", {})
  defined_tags  = lookup(each.value, "defined_tags", {})
}