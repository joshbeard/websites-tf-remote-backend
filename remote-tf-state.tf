provider "aws" {
  region = "us-west-2"
}

provider "aws" {
  alias  = "replica"
  region = "us-east-1"
}

module "remote_state" {
  source = "nozaq/remote-state-s3-backend/aws"

  providers = {
    aws         = aws
    aws.replica = aws.replica
  }
}

output "state_bucket" {
    value = module.remote_state.state_bucket.bucket
}

output "replica_bucket" {
    value = module.remote_state.replica_bucket[0].bucket
}

output "kms_key" {
    value = module.remote_state.kms_key.id
}
