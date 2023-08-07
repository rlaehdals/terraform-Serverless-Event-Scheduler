
module "scheduler"{
    source = "github.com/rlaehdals/terraform-archive/event-scheduler"
    sns_name = var.sns_name
    sqs_name = var.sqs_name
    event_bridge_name = var.event_bridge_name
    event_bridge_scheduler_cron = var.event_bridge_scheduler_cron
    tags = var.tags 
    
    # SourceAccount: 자신의 AWS ID
    event_scheduler_role = <<EOF
    {
    "Version": "2012-10-17",
    "Statement": [
        {
            "Effect": "Allow",
            "Principal": {
                "Service": "scheduler.amazonaws.com"
            },
            "Action": "sts:AssumeRole",
            "Condition": {
                "StringEquals": {
                    "aws:SourceAccount": "" 
                }
            }
        }
    ]
} 
EOF
}