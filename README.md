# ProjectAwsWithTerraformAndPhytonAndGolang
Lambda aws and kinesis with terraform
como enviar um evento pro kinesis?
AWS_DEFAULT_REGION=eu-central-1 aws kinesis put-record --stream-name terraform-kinesis-first-event --cli-binary-format raw-in-base64-out --data '{}' --partition-key ''

