# Terraform AWS Infrastructure

This repository manages AWS infrastructure for multiple environments (dev, sit, prod) using Terraform. Each environment has its own configuration and deployment workflow.

## Project Structure

This project organizes Terraform configurations by environment, using modularized code for AWS resources 

## Prerequisites

- **Terraform**: Version 1.9.8 or later.
- **AWS IAM Roles**: Ensure AWS roles are set up for each environment (dev, sit, prod) with appropriate permissions.
- **GitHub Secrets**: Store AWS role ARNs and region in GitHub Secrets to enable secure access.

## Deployment Process

### Development Environment

- **Trigger**: Automatically triggers on a merge to `main`.
- **Purpose**: Provisions or updates resources in the Dev environment based on code changes.

### SIT and Prod Environments

- **Trigger**: Can be manually triggered in GitHub Actions using `workflow_dispatch`.
- **Purpose**: Allows controlled deployments to SIT and Prod, enabling approvals and monitoring.

## GitHub Actions Workflows

Each environment has a dedicated GitHub Actions workflow for deployment:

- **Dev**: (`deployment-dev.yml`) Automatically runs on changes to `main`.
- **SIT**: (`deployment-sit.yml`) Triggered manually in the GitHub Actions tab.
- **Prod**: (`deployment-prod.yml`) Triggered manually in the GitHub Actions tab.

### Deployment Steps

1. **Feature Development**: Create a new branch from `main` to develop a feature.
2. **Push and Review**: Push your feature branch, create a pull request, and have it reviewed.
3. **Merge to Main**: Once approved, merge the feature branch into `main` to trigger the Dev deployment.

## Important Notes

- **Automatic Approvals**: `terraform apply -auto-approve` is enabled, which automatically applies changes.
- **Manual Triggers**: SIT and Prod deployments are manually triggered to ensure control over these       environments.

---



