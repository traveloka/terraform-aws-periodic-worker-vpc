variable "lambda_code_bucket" {
  type        = "string"
  description = "The name of the s3 bucket where the deployment resides"
}

variable "lambda_code_path" {
  type        = "string"
  description = "Name of the S3 Object that contains the function zip file"
}

variable "lambda_name" {
  type        = "string"
  description = "Lambda function name"
}

variable "lambda_runtime" {
  description = "Runtime of the lambda"
}

variable "lambda_handler" {
  description = "Handler of the function"
}

variable "lambda_memory_size" {
  description = "Lambda memory size"
}

variable "lambda_timeout" {
  description = "Lambda timeout value"
}

variable "tags" {
  type        = "map"
  description = "Tags associated with the lambda"
  default     = {}
}

variable "environment_variables" {
  type        = "map"
  description = "Environment variables for the lambda"

  default = {}
}

variable "iam_policy_document" {
  type        = "string"
  description = "Additional policy associated with the lambda"
}

variable "require_additional_policy" {
  description = "Flag to indicate whether the lambda requires additional policy"
  default     = false
}

variable "subnet_ids" {
  type        = "list"
  description = "Subnet ids associated with the lambda"
  default     = []
}

variable "security_group_ids" {
  type        = "list"
  description = "Security group ids associated with the lambda"
  default     = []
}

variable "schedule_expression" {
  type        = "string"
  description = "Cron expression to execute the lambda"
}
