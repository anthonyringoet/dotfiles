#!/usr/bin/env bash

export AWS_PROFILE=$1
echo "AWS_PROFILE=$AWS_PROFILE"
aws sts get-caller-identity