# Import AWS PowerShell Module
Import-Module AWSPowerShell.NetCore

# Set AWS Region
$region = "us-east-1"
Set-DefaultAWSRegion -Region $region

# Get bucket name
$bucketName = Read-Host -Prompt 'Enter the S3 bucket name to delete'

try {
    # Delete all objects in bucket first
    Get-S3Object -BucketName $bucketName | Remove-S3Object -Force

    # Delete the bucket
    Remove-S3Bucket -BucketName $bucketName -Force
    Write-Host "Bucket $bucketName deleted successfully."
} catch {
    Write-Host "Error deleting bucket: $_"
}