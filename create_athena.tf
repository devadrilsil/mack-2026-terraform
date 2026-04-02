resource "aws_glue_catalog_database" "athena_db" {
  name = var.athena_db
}

resource "aws_athena_workgroup" "main" {
  name = "primary_workgroup"

  configuration {
    enforce_workgroup_configuration    = true
    publish_cloudwatch_metrics_enabled = true

    result_configuration {
      output_location = "s3://${aws_s3_bucket.bucket_athena_qr.bucket}/results/"

      encryption_configuration {
        encryption_option = "SSE_S3"
      }
    }
  }

}
