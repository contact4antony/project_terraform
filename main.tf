/*
output "a_01_string_type_variable_output" {
  value = var.a_01_string_variable
}

output "a_02_number_type_variable_output" {
  value = var.a_02_number_variable
}

output "a_03_bool_type_variable_output" {
  value = var.a_03_bool_variable
}

output "a_04_list_string_type_variable_output" {
  value = var.a_04_list_variable
}

output "a_05_object_type_variable_output" {
  value = var.a_05_list_variable
}

output "a_06_object_type_another_variable_output" {
  value = var.a_05_list_variable.skills[1]
}

output "a_07_any_type_variable_output" {
  value = var.a_06_any_variable
}

*/


locals {
  azure_resources = {
    resource_group_name  = var.resource_group_name
    location = var.location
    tags = var.tags
  }
}

output "output_resources" {
  value = local.azure_resources
}

output "output_location" {
  value = local.azure_resources.location
}

output "output_tags" {
  value = local.azure_resources.tags
}

output "interpolation" {
  value = "resource spinned for ${var.location}"
}
