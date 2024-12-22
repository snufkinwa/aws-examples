# AWS- Example 

Certified Solutions Architect Associate 


## AWS S3 Bash Scripts Guide

### Prerequisites
- AWS CLI installed and configured
- Execute permissions on scripts: `chmod u+x *.sh`

### Available Scripts

Script | Description | Usage
---|---|---
`generate_files.sh` | Creates sample files for testing | `./generate_files.sh`
`create_bucket.sh` | Creates new S3 bucket | `./create_bucket.sh <bucket-name> <region>`
`sync_files.sh` | Syncs local files to bucket | `./sync_files.sh <bucket-name> <directory>`
`list_objects.sh` | Lists bucket contents | `./list_objects.sh <bucket-name>`
`delete_bucket.sh` | Deletes bucket and contents | `./delete_bucket.sh <bucket-name>`
`get_newest_bucket.sh` | Shows most recently created bucket | `./get_newest_bucket.sh`
`list_buckets.sh` | Lists all S3 buckets | `./list_buckets.sh`

Parameters:
- `<bucket-name>`: Target S3 bucket name
- `<region>`: AWS region (e.g., us-east-1)
- `<directory>`: Local directory to sync


 ## Powershell

 - Start powershell with `pwsh`

## Installation

```powershell
# Install AWS PowerShell module
Install-Module -Name AWSPowerShell.NetCore -Scope CurrentUser -Force -AllowClobber

# Verify installation
Get-Module -ListAvailable AWSPowerShell.NetCore

# Import module
Import-Module AWSPowerShell.NetCore
```

## Configure AWS Credentials
```powershell 
# Method 1: Initialize default configuration
Initialize-AWSDefaultConfiguration -AccessKey "<access-key>" -SecretKey "<secret-key>" -Region "<region>"

# Method 2: Store credentials profile
Set-AWSCredential -AccessKey "<access-key>" -SecretKey "<secret-key>" -StoreAs Default

# List S3 buckets
Get-S3Bucket
```

Replace `<access-key>`, `<secret-key>`, and `<region>` with your AWS credentials.