variable "region" {
  description = "AWS region"
  default     = "ap-northeast-1"
  type        = string
}

variable "instance_type" {
  description = "Type of EC2 instance to provision"
  default     = "t2.micro"
  type        = string
}

variable "instance_name" {
  description = "EC2 instance name"
  default     = "Provisioned by Terraform"
  type        = string
}

output "current_workspace_name" {
  value = terraform.workspace
}

variable "HCP_TERRAFORM_RUN_ID" {
  type    = string
  default = ""
}

output "remote_execution_determine" {
  value = "Remote run environment? %{if var.HCP_TERRAFORM_RUN_ID != ""}Yes%{else}No this is local%{endif}!"
}
