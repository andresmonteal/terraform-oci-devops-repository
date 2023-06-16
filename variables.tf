// Copyright (c) 2018, 2021, Oracle and/or its affiliates.

variable "tenancy_ocid" {
  description = "(Required) (Updatable) The OCID of the root compartment."
  type        = string
  default     = null
}

variable "compartment_id" {
  description = "compartment id where to create all resources"
  type        = string
  default     = null
}

variable "compartment" {
  description = "compartment name where to create all resources"
  type        = string
  default     = null
}

variable "description" {
  description = "(Optional) (Updatable) Details of the repository. Avoid entering confidential information."
  type        = string
}

variable "name" {
  description = "(Required) (Updatable) Unique name of a repository."
  type        = string
}

variable "type" {
  description = "(Required) (Updatable) Type of repository."
  type        = string
}

variable "project_name" {
  description = "(Required) Project name (case-sensitive)."
  type        = string
}

variable "default_branch" {
  description = "(Optional) (Updatable) The default branch of the repository."
  type        = string
  default     = "refs/heads/main"
}

variable "freeform_tags" {
  description = "(Optional) (Updatable) Simple key-value pair that is applied without any predefined name, type or scope. Exists for cross-compatibility only."
  type        = map(any)
  default     = null
}

variable "defined_tags" {
  description = "(Optional) (Updatable) Defined tags for this resource. Each key is predefined and scoped to a namespace."
  type        = map(any)
  default     = null
}