#!/bin/bash
set -e

if [ -z "$1" ]; then
    echo "No bucket name provided. Usage: $0 bucket-name [region]"
    exit 1
fi

BUCKET_NAME=$1
REGION=${2:-us-east-1}

if [ "$REGION" == "us-east-1" ]; then
    aws s3api create-bucket --bucket "$BUCKET_NAME"
else
    aws s3api create-bucket --bucket "$BUCKET_NAME" --create-bucket-configuration LocationConstraint="$REGION"
fi
