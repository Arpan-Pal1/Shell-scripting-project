#!/bin/bash

###################
# Author: Arpan
# Date: 30.03.2024
# version: v1
# This script will report the AWS resource usage
###################

# AWS S3
# AWS EC2
# AWS Lambda
# AWS IAM

set -x

# List s3 buckets
aws s3 ls

# List EC2 instance
aws ec2 describe-instances | jq ".Reservations[].Instances[].InstanceId" #jq help to query from the json [if it is not install just do sudo yum install jq]

# List AWS Lambda function
aws lambda list-functions

# List AWS IAM Users
aws iam list-users