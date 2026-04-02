locals {	
	nome_bucket_raw = "${var.prefix_obj}-${var.nome_buckets}-raw"
	nome_bucket_refined = "${var.prefix_obj}-${var.nome_buckets}-refined"
	nome_bucket_athena_qr = "${var.prefix_obj}-${var.nome_buckets}-athena-qr"
}