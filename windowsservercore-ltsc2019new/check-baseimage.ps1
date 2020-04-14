$ErrorActionPreference = 'Stop'

# fetch the current version number from base image
$current=(Get-ItemProperty "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion")
$currUBR=$current.UBR

# fetch the maximum version number from MCR by filtering and sorting the JSON result
$prefix="$($current.CurrentMajorVersionNumber).$($current.CurrentMinorVersionNumber).$($current.CurrentBuildNumber)."
$json=$(Invoke-WebRequest -UseBasicParsing https://mcr.microsoft.com/v2/windows/servercore/tags/list | ConvertFrom-Json)
$hubUBR=($json.tags | Where-Object -FilterScript { $_.StartsWith($prefix) -and $_ -Match "^\d+\.\d+\.\d+\.\d+$" } |%{[System.Version]$_}|sort)[-1].Revision

Write-Output "Base image Update Build Revision $currUBR, Hub Update Build Revision $hubUBR"
