# TF Variables
variable "org_name" {
}

variable "api_token" {
}

variable "base_url" {
  default = "okta.com" #"oktapreview.com" if using non-prod.
}

variable "app_url" {
}

variable "environment" {
  default = "dev"
}

variable "aws_region" {
  default = "us-east-2"
}

variable "aws_profile" {
}

variable "aws_ssm_prefix" {
  default = "byob"
}

# variable "recaptcha_site_secret" {
# }

