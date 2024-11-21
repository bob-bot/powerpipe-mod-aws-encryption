benchmark "aws_encryption" {
  title       = "AWS Encryption"
  description = "Controls relevant to the top encryption controls."
  children = [
    benchmark.encryption_at_rest,
    benchmark.encryption_in_transit
  ]
}

benchmark "encryption_at_rest" {
  title = "1. Encryption at Rest - 1"
  children = [
    aws_compliance.control.apigateway_stage_cache_encryption_at_rest_enabled,
    aws_compliance.control.athena_workgroup_encryption_at_rest_enabled,
    aws_compliance.control.athena_workgroup_enforce_configuration_enabled,
    aws_compliance.control.backup_recovery_point_encryption_enabled,
    aws_compliance.control.cloudfront_distribution_field_level_encryption_enabled,
    aws_compliance.control.cloudtrail_trail_logs_encrypted_with_kms_cmk,
    aws_compliance.control.codebuild_project_artifact_encryption_enabled,
    aws_compliance.control.codebuild_project_s3_logs_encryption_enabled,
    aws_compliance.control.dax_cluster_encryption_at_rest_enabled,
    aws_compliance.control.docdb_cluster_encryption_at_rest_enabled,
    aws_compliance.control.docdb_cluster_instance_encryption_at_rest_enabled,
    aws_compliance.control.dynamodb_table_encrypted_with_kms,
    aws_compliance.control.dynamodb_table_encryption_enabled,
    aws_compliance.control.ebs_attached_volume_encryption_enabled,
    aws_compliance.control.ebs_snapshot_encryption_enabled,
    aws_compliance.control.ebs_volume_encryption_at_rest_enabled,
    aws_compliance.control.ec2_ebs_default_encryption_enabled,
    aws_compliance.control.ecs_cluster_encryption_at_rest_enabled,
    aws_compliance.control.efs_file_system_encrypt_data_at_rest,
    aws_compliance.control.efs_file_system_encrypted_with_cmk,
    aws_compliance.control.eks_cluster_secrets_encrypted,
    aws_compliance.control.elasticache_replication_group_encryption_at_rest_enabled,
    aws_compliance.control.elasticache_replication_group_encryption_at_rest_enabled_with_kms_cmk,
    aws_compliance.control.emr_cluster_encryption_at_rest_enabled,
    aws_compliance.control.emr_cluster_encryption_at_rest_with_cse_cmk,
    aws_compliance.control.emr_cluster_encryption_at_rest_with_sse_kms,
    aws_compliance.control.emr_cluster_local_disk_encryption_enabled,
    aws_compliance.control.es_domain_encryption_at_rest_enabled,
    aws_compliance.control.es_domain_node_to_node_encryption_enabled,
    aws_compliance.control.glue_data_catalog_encryption_settings_metadata_encryption_enabled,
    aws_compliance.control.glue_data_catalog_encryption_settings_password_encryption_enabled,
    aws_compliance.control.glue_dev_endpoint_cloudwatch_logs_encryption_enabled,
    aws_compliance.control.glue_dev_endpoint_job_bookmarks_encryption_enabled,
    aws_compliance.control.glue_dev_endpoint_s3_encryption_enabled,
    aws_compliance.control.glue_job_bookmarks_encryption_enabled,
    aws_compliance.control.glue_job_cloudwatch_logs_encryption_enabled,
    aws_compliance.control.glue_job_s3_encryption_enabled,
    aws_compliance.control.kinesis_firehose_delivery_stream_server_side_encryption_enabled,
    aws_compliance.control.kinesis_stream_encrypted_with_kms_cmk,
    aws_compliance.control.kinesis_stream_server_side_encryption_enabled,
    aws_compliance.control.log_group_encryption_at_rest_enabled,
    aws_compliance.control.neptune_db_cluster_encryption_at_rest_enabled,
    aws_compliance.control.neptune_db_cluster_snapshot_encryption_at_rest_enabled,
    aws_compliance.control.opensearch_domain_encryption_at_rest_enabled,
    aws_compliance.control.opensearch_domain_node_to_node_encryption_enabled,
    aws_compliance.control.rds_db_cluster_encrypted_with_cmk,
    aws_compliance.control.rds_db_cluster_encryption_at_rest_enabled,
    aws_compliance.control.rds_db_instance_connections_encryption_enabled,
    aws_compliance.control.rds_db_instance_encryption_at_rest_enabled,
    aws_compliance.control.rds_db_snapshot_encrypted_at_rest,
    aws_compliance.control.redshift_cluster_encrypted_with_cmk,
    aws_compliance.control.redshift_cluster_encryption_logging_enabled,
    aws_compliance.control.redshift_cluster_kms_enabled,
    aws_compliance.control.s3_bucket_default_encryption_enabled,
    aws_compliance.control.s3_bucket_default_encryption_enabled_kms,
    aws_compliance.control.sagemaker_endpoint_configuration_encryption_at_rest_enabled,
    aws_compliance.control.sagemaker_notebook_instance_encrypted_with_kms_cmk,
    aws_compliance.control.sagemaker_notebook_instance_encryption_at_rest_enabled,
    aws_compliance.control.sagemaker_training_job_volume_and_data_encryption_enabled,
    aws_compliance.control.secretsmanager_secret_encrypted_with_kms_cmk,
    aws_compliance.control.sns_topic_encrypted_at_rest,
    aws_compliance.control.sqs_queue_encrypted_at_rest,
    aws_compliance.control.sqs_queue_encrypted_with_kms_cmk,
    aws_compliance.control.ssm_parameter_encryption_enabled,
    aws_compliance.control.workspaces_workspace_volume_encryption_enabled
  ]
}

benchmark "encryption_in_transit" {
  title = "2. Encryption in Transit"
  children = [
   aws_compliance.control.apigateway_rest_api_stage_use_ssl_certificate,
   aws_compliance.control.cloudfront_distribution_custom_origins_encryption_in_transit_enabled,
   aws_compliance.control.cloudfront_distribution_encryption_in_transit_enabled,
   aws_compliance.control.cloudfront_distribution_latest_tls_version,
   aws_compliance.control.cloudfront_distribution_non_s3_origins_encryption_in_transit_enabled,
   aws_compliance.control.dms_endpoint_ssl_configured,
   aws_compliance.control.efs_file_system_enforces_ssl,
   aws_compliance.control.elasticache_replication_group_encryption_in_transit_enabled,
   aws_compliance.control.elb_application_lb_redirect_http_request_to_https,
   aws_compliance.control.elb_application_network_lb_use_ssl_certificate,
   aws_compliance.control.elb_classic_lb_use_ssl_certificate,
   aws_compliance.control.elb_classic_lb_use_tls_https_listeners,
   aws_compliance.control.elb_listener_use_secure_ssl_cipher,
   aws_compliance.control.elb_network_lb_tls_listener_security_policy_configured,
   aws_compliance.control.elb_tls_listener_protocol_version,
   aws_compliance.control.es_domain_encrypted_using_tls_1_2,
   aws_compliance.control.glue_connection_ssl_enabled,
   aws_compliance.control.msk_cluster_encryption_in_transit_with_tls_enabled,
   aws_compliance.control.opensearch_domain_https_required,
   aws_compliance.control.redshift_cluster_encryption_in_transit_enabled,
   aws_compliance.control.s3_bucket_enforces_ssl,
   aws_compliance.control.sagemaker_training_job_inter_container_traffic_encryption_enabled
  ]
}
