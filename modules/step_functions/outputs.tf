output "step_function_arn" {
  description = "The ARN of the created Step Function state machine"
  value       = aws_sfn_state_machine.basic_step_function.arn
}
