// Copyright (c) 2018, 2021, Oracle and/or its affiliates.

########################
# code repositories
########################

locals {
  default_freeform_tags = {
    terraformed = "Please do not edit manually"
    module      = "oracle-terraform-oci-devops-repository"
  }
  merged_freeform_tags = merge(var.freeform_tags, local.default_freeform_tags)
}

resource "oci_devops_repository" "main" {
  #Required
  name            = var.name
  project_id      = data.oci_devops_projects.project.project_collection[0].items[0].id
  repository_type = var.type

  #Optional
  default_branch = var.default_branch
  defined_tags   = var.defined_tags
  description    = var.description
  freeform_tags  = local.merged_freeform_tags

  timeouts {
    create = "20m"
    update = "20m"
    delete = "20m"
  }
}