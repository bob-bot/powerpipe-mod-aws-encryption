mod "aws_encryption" {
  title = "AWS Encryption"
  require {
    mod "github.com/turbot/steampipe-mod-aws-compliance" {
      version = "*"
    }
  }
}
