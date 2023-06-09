variable "azure_region" {
  description = "(Optional) Region in which to deploy the hub network and DC. Defaults to West US."
  type        = string
  default     = "eu-west"
}

variable "vnet_hub_address_space" {
  description = "(Required) Address space used by the Hub Virtual Network"
  type        = string
}

variable "vnet_hub_subnets" {
  description = "(Required) Map of subnet names and address spaces for the Hub Virtual Network. One subnet MUST be named adSubnet and another must be name AzureFirewallSubnet."
  type        = map(string)
}

variable "dc_private_ip_address" {
  description = "(Required) Private IP Address to be used by the domain controller and for DNS of the Hub Virtual Network"
  type        = string
}

variable "dc_virtual_machine_size" {
  description = "(Optional) Virtual Machine size of DC. Defaults to Standard_B2s"
  type        = string
  default     = "Standard_B2s"
}

variable "dc_admin_username" {
  description = "(Optional) Admin username for DC. Defaults to avdDCAdmin"
  type        = string
  default     = "avdDCAdmin"
}

variable "dc_ad_domain_name" {
  description = "(Required) FQDN of domain for the Hub DC"
  type        = string
}

variable "dc_ad_netbios_name" {
  description = "(Required) NETBIOS name for the Hub DC"
  type        = string
}

variable "admin_password" {
  description = "The admin password for the module azure_dc"
  type        = string
}

variable "environment" {
  description = "Environment variable. can be dev, qa or prod"
  type        = string
}

variable "region_shortname" {
  description = "The short name of the Azure region"
  type        = string
}

variable "common_tags" {
  description = "Common tags to be applied to all resources"
  type        = map(string)
  default     = {
    "CostCenter"  = "CyrusAcademy"
    "Env"         = "dev"
    "Project"     = "AVD"
  }
}
