# create a role for aws_glue

resource "aws_iam_role" "glue_role" {
  name = var.glue_job_name

  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect = "Allow"
        Principal = {
          Service = "glue.amazonaws.com"
        }
        Action = "sts:AssumeRole"
      }
    ]
  })
}

# policy attachment

resource "aws_iam_role_policy_attachment" "glue_s3_access" {
  role       = aws_iam_role.glue_role.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonS3ReadOnlyAccess"
}

resource "aws_iam_role_policy_attachment" "glue_service_access" {
  role       = aws_iam_role.glue_role.name
  policy_arn = "arn:aws:iam::aws:policy/service-role/AWSGlueServiceRole"
}


# create glue job 

resource "aws_glue_job" "my_glue_job" {
  name     = var.glue_job_name
  role_arn = aws_iam_role.glue_role.arn

  command {
    name            = "glueetl"
    script_location =  var.scriptpath
    python_version  = "3"
  }

  max_retries       = 0
  glue_version      = "3.0"
  worker_type       = "G.1X"
  number_of_workers  = 2

  default_arguments = {
    "--job-language"  = "python"
    "--glue-version"  = "3.0"
  }
}


