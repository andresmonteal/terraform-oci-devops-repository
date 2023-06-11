data "oci_identity_compartments" "compartment" {
  #Required
  compartment_id            = var.tenancy_ocid
  access_level              = "ANY"
  compartment_id_in_subtree = true

  #Optional
  filter {
    name   = "state"
    values = ["ACTIVE"]
  }

  filter {
    name   = "name"
    values = [var.compartment]
  }
}

data "oci_devops_projects" "project" {
  #Required
  compartment_id = data.oci_identity_compartments.compartment.compartments[0].id

  #Optional
  name = var.project_name
}