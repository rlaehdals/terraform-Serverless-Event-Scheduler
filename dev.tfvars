sns_name                    = "scheduler-topic"
sqs_name                    = "scheduler-sqs"
event_bridge_name           = "scheduler-event"
event_bridge_scheduler_cron = "" # 각자 cron 시간
region                      = "ap-northeast-2"
tags = {
  Terraform  = "true"
  Enviroment = "dev"
}