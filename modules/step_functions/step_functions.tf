# Variable for the role name
variable "step_function_role_name" {
  description = "Name of the existing IAM role for Step Functions"
  type        = string
  default     = "terraformDemo"  # Replace with actual role name
}

# Create a policy for Step Functions if needed
resource "aws_iam_policy" "step_function_policy" {
  name        = "StepFunctionPolicy"
  description = "Policy for Step Functions to manage state machines"
  policy      = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Effect = "Allow",
        Action = [
          "states:CreateStateMachine",
          "states:DeleteStateMachine",
          "states:UpdateStateMachine",
          "states:StartExecution",
          "states:StopExecution",
          "states:ListStateMachines",
          "states:DescribeStateMachine",
          "states:ListStateMachineVersions",
          "states:DescribeExecution",
          "states:ListExecutions",
          "states:ListTagsForResource"
        ],
        Resource = "*"
      }
    ]
  })
}

# Attach the policy to the existing IAM role if needed
resource "aws_iam_role_policy_attachment" "attach_step_function_policy" {
  role       = var.step_function_role_name
  policy_arn = aws_iam_policy.step_function_policy.arn
}

# Define the Step Function state machine using the existing IAM role
resource "aws_sfn_state_machine" "basic_step_function" {
  name     = "BasicStepFunction"
  role_arn = aws_iam_role.step_function_role.arn

  definition = jsonencode({
    Comment = "A simple Step Function that says Hello, World!",
    StartAt = "HelloWorld",
    States = {
      HelloWorld = {
        Type   = "Pass",
        Result = "Hello, World!",
        End    = true
      }
    }
  })
}
