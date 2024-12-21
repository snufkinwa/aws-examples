#!/bin/bash
set -e
if [ -z "$1" ]; then
    echo "No bucket name provided. Usage: $0 bucket-name"
    exit 1
fi
BUCKET_NAME=$1
aws s3api list-objects --bucket "$BUCKET_NAME" --query 'Contents[].{Key: Key, Size: Size}'