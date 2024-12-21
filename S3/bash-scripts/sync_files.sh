#!/bin/bash
set -e
if [ -z "$1" ]; then
    echo "No bucket name provided. Usage: $0 bucket-name"
    exit 1
fi
BUCKET_NAME=$1
FILE_PREFIX=${2:-files}
aws s3 sync ./temp s3://$BUCKET_NAME/$FILE_PREFIX