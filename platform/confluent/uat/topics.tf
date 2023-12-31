resource "confluent_kafka_topic" "topic" {
  kafka_cluster {
    id = confluent_kafka_cluster.prod.id
  }
  topic_name    = "${var.app}-${var.env}-topic"
  rest_endpoint = confluent_kafka_cluster.prod.rest_endpoint
  credentials {
    key    = confluent_api_key.admin-sa-api-key.id
    secret = confluent_api_key.admin-sa-api-key.secret
  }
}