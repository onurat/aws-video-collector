provider "aws" {
  region = "us-east-1"  # Update the region as needed
}

resource "aws_s3_bucket" "video-collector-s3" {
  bucket = var.bucket_name

  # Object lock configuration
  object_lock_enabled         = false

  # Bucket policy
  policy = jsonencode({
    Statement = [
      {
        Action    = "s3:GetObject"
        Effect    = "Allow"
        Principal = "*"
        Resource  = "arn:aws:s3:::${var.bucket_name}/*"
      },
    ]
    Version   = "2012-10-17"
  })

  # Request payer
  request_payer               = "BucketOwner"

  # Grant permissions
  grant {
    id          = "59e23dca60b77ed0ffcca49c94d3710dc972903437846f747d3fcd00d7825f76"
    permissions = ["FULL_CONTROL"]
    type        = "CanonicalUser"
  }

  # Server-side encryption configuration
  server_side_encryption_configuration {
    rule {
      bucket_key_enabled = false

      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
  }

  # Versioning configuration
  versioning {
    enabled    = false
    mfa_delete = false
  }

  # Website configuration
  website {
    index_document = "index.html"
  }
}
