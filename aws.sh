#!/usr/bin/env bash

# usage:
# . aws.sh some_profile
export AWS_PROFILE=$1
echo "AWS_PROFILE=$AWS_PROFILE"
aws sts get-caller-identity