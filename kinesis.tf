
resource "aws_kinesis_stream" "first-event_stream" {
  name             = "terraform-kinesis-first-event"
  shard_count      = 1
  retention_period = 48

  shard_level_metrics = [
    "IncomingBytes",
    "OutgoingBytes",
    "IteratorAgeMilliseconds",
  ]

  tags = {
    Environment = "test"
  }
}
