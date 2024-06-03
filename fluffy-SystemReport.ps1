# Collecte des informations sur l'utilisation du processeur
$cpuUsage = Get-WmiObject Win32_PerfFormattedData_PerfOS_Processor | Select-Object -ExpandProperty PercentProcessorTime

# Collecte des informations sur l'utilisation de la mémoire
$memoryUsage = Get-WmiObject Win32_OperatingSystem | Select-Object -Property @{Name="MemoryUsage";Expression={[math]::Round(($_.TotalVisibleMemorySize - $_.FreePhysicalMemory) / $_.TotalVisibleMemorySize * 100, 2)}}

# Collecte des informations sur l'espace disque
$diskUsage = Get-WmiObject Win32_LogicalDisk | Where-Object {$_.DriveType -eq 3} | Select-Object DeviceID, @{Name="FreeSpace(GB)";Expression={[math]::Round($_.FreeSpace / 1GB, 2)}}, @{Name="TotalSpace(GB)";Expression={[math]::Round($_.Size / 1GB, 2)}}

# Génération du rapport
$report = @"
System Report
=============
Date: $(Get-Date)
CPU Usage: $cpuUsage%
Memory Usage: $($memoryUsage.MemoryUsage)%
Disk Usage:
$(foreach ($disk in $diskUsage) {"Drive $($disk.DeviceID): Free Space $($disk.'FreeSpace(GB)')GB / Total Space $($disk.'TotalSpace(GB)')GB"})
"@

# Affichage du rapport
Write-Output $report

# Enregistrement du rapport dans un fichier
$report | Out-File -FilePath "SystemReport_$(Get-Date -Format 'yyyyMMdd_HHmmss').txt"
