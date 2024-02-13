terraform {
  backend "s3" {
    region = "us-west-2"    
    bucket = "tf-config-us-west-2-v11"
    key = "v1.tfstate"
    workspace_key_prefix = "devops/tf"
    dynamodb_table = "tfv1_locks"
  }
}
