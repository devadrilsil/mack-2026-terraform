resource "aws_s3_bucket" "bucket_raw" {
	bucket = local.nome_bucket_raw
	tags = {
		Name        = "raw bucket"
	}
}

resource "aws_s3_bucket" "bucket_refined" {
	bucket = local.nome_bucket_refined
	tags = {
		Name        = "refined bucket"
	}
}

resource "aws_s3_bucket" "bucket_athena_qr" {
	bucket = local.nome_bucket_athena_qr
	tags = {
		StorageClass = "Temporary"
		Service      = "Athena"
	}
}