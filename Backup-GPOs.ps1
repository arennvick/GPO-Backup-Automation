# Root backup directory
$BackupRoot = "C:\GPO_Backups"

# Create date-stamped folder: yyyy-MM-dd
$Date = Get-Date -Format "yyyy-MM-dd"
$BackupPath = Join-Path $BackupRoot $Date

# Create the folder
New-Item -Path $BackupPath -ItemType Directory -Force | Out-Null

# Backup all GPOs
Backup-GPO -All -Path $BackupPath

Write-Host "GPO Backup completed. Saved in: $BackupPath"
