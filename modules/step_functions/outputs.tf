output "step_function_policy_arn" {
  description = "ARN of the Step Function IAM policy"
  value       = aws_iam_policy.step_function_policy.arn
}

output "step_function_state_machine_arn" {
  description = "ARN of the Step Function state machine"
  value       = aws_sfn_state_machine.basic_step_function.arn
}
