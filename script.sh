#!/bin/bash

####################################

# Author : SaiCharan
# Date: 30-09-2024
# Version: 01

####################################

set -x

# list of ec2 instances
aws ec2 describe-instances | jq '.Reservations[] .Instances[] .InstanceId'

# list of s3 buckets
aws s3 ls

# list of lambda functions
aws lambda list-functions

# list of iam users
aws iam list-users
