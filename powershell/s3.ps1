# Import AWS PowerShell Module
Import-Module AWSPowerShell.NetCore

# Set AWS Region
$region = "us-east-1"
Set-DefaultAWSRegion -Region $region

# Prompt for S3 Bucket Name
$bucketName = Read-Host -Prompt 'Enter the S3 bucket name'

# Function to check if bucket exists in specified region
function BucketExists {
    param ($bucketName)
    try {
        $bucket = Get-S3Bucket -BucketName $bucketName -ErrorAction Stop
        return $bucket.BucketRegion -eq $region
    } catch {
        return $false
    }
}

# Create bucket if it doesn't exist in specified region
if (-Not (BucketExists -bucketName $bucketName)) {
    try {
        New-S3Bucket -BucketName $bucketName -Region $region
        Write-Host "Bucket $bucketName created."
    } catch {
        Write-Host "Error creating bucket: $_"
        exit 1
    }
} else {
    Write-Host "Bucket $bucketName already exists in $region."
}

# Create and upload file
$fileName = "sample.txt"
"Hello, S3!" | Set-Content -Path $fileName

try {
    Write-S3Object -BucketName $bucketName -File $fileName -Key $fileName
    Write-Host "File $fileName uploaded to bucket $bucketName."
} catch {
    Write-Host "Error uploading file: $_"
} finally {
    Remove-Item -Path $fileName
}