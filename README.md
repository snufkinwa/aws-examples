# AWS- Example 

Certified Solutions Architect Associate 

## S3/bash-scripts - Running Scripts

Make sure to be able to run scripts! `chmod u+x *.sh`

 - `./generate_files.sh`
 - `./create_bucket.sh <bucket-name> <REGION>`
 - `./sync_files.sh <bucket-name> files`
 - `./list_objects.sh <bucket-name>`
 - `./delete_bucket.sh <bucket-name>`
 - `./get_newest_bucket.sh`
 - `./list_buckets.sh`

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