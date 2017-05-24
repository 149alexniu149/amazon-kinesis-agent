<#
.SYNOPSIS
    Installation script for AWS Kinesis Agent on Microsoft Windows
#>
Param(
    [String]$Targets = "Help"   #The targets to run.
)

If ( -NOT ([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole(`
    [Security.Principal.WindowsBuiltInRole] "Administrator"))
{
    Write-Warning "Admin privilege required to run this script. Please rerun the script as Administrator."
    Break
}
