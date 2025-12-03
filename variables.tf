variable "tenancy_ocid" {
    description = "OCID del tenancy"
    type = string
}

variable "user_ocid" {
    description = "ocid del usuario"
    type = string
}

variable "namespace" {
  description = "pos mi namespace wey"
  type = string
}
variable "fingerprint" {
    description = "fingerprint de la api key"
    type = string
}

variable "private_key" {
  description = "OCI private key content (for CI/CD)"
  type        = string
  default     = ""
  sensitive   = true
}

variable "private_key_path" {
  description = "Path to OCI private key (for local)"
  type        = string
  default     = ""
}

variable "region" {
    description = "oci region"
    type = string
}

variable "compartment_ocid" {
  description = "OCID del compartment"
  type        = string
}

variable "ssh_public_key" {
    description = "ssh key para la vm"
    type = string 
}

