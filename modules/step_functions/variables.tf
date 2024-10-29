variable "step_function_role_name" {
  description = "Name of the existing IAM role for Step Functions"
  type        = string
  default     = "terraformDemo"  #  actual role name
}

variable "step_function_policy_name" {
  description = "Name for the Step Function IAM policy"
  type        = string
  default     = "StepFunctionPolicy"
}

variable "state_machine_name" {
  description = "Name for the Step Function state machine"
  type        = string
  default     = "BasicStepFunction"
}
