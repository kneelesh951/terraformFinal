
resource "aws_redshiftserverless_namespace" "redshift" {
  # admin_user_name    = var.adminuser
  namespace_name       = var.namespace_name
  admin_user_password  = var.admin_user_password
  
}

resource "aws_security_group" "redshift_sg" {
  name        = "redshift_sg"
  description = "Security group for Redshift Serverless"
  
  ingress {
    from_port   = 5439
    to_port     = 5439
    protocol    = "tcp"
    cidr_blocks = var.cidr_blocks
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_redshiftserverless_workgroup" "redshift" {
  workgroup_name       = var.workgroup_name
  namespace_name       = aws_redshiftserverless_namespace.example.namespace_name
  base_capacity        = var.base_capacity
  enhanced_vpc_routing = false
  security_group_ids   = [aws_security_group.redshift_sg.id]
}
