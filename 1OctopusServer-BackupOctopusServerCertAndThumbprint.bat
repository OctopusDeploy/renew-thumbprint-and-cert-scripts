@echo off
rem Run this script in an elevated console window

rem Run on *only one* Octopus Server HA node

rem Backup the old Octopus Server certificate
echo Change folder to C:\Program Files\Octopus Deploy\Octopus
cd "C:\Program Files\Octopus Deploy\Octopus"

echo Backing up the old Octopus Server certificate...
Octopus.Server.exe export-certificate --instance OctopusServer --export-pfx="C:\Temp\oldoctopusservercert.pfx" --pfx-password <old-cert-password>
echo Successfully backed up the old Octopus Server certificate.
