# Remote Terraform State

Configures remote Terraform state using <https://registry.terraform.io/modules/nozaq/remote-state-s3-backend/aws/0.4.0>.

## Bootstrapping

The `tfstate.tf` file should be renamed to `tfstate.tf.disabled` on a brand new bootstrap. Rename it back after
running `terraform apply` successfully for the first time.

## Using the remote state

The `tfstate.tf` file serves as an example for other modules.
