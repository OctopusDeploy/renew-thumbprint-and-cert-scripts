@echo off
rem Run this script in an elevated console window

rem Run on *each* Octopus Server HA node - both UI and Worker nodes

echo Changing folder to C:\Program Files\Octopus Deploy\Octopus
cd "C:\Program Files\Octopus Deploy\Octopus"

echo Importing the new Octopus Server certificate...
Octopus.Server.exe import-certificate --instance OctopusServer --from-file="C:\Temp\newoctopusservercert.pfx" --pfx-password <new-cert-password>
echo Successfully completed importing the Octopus Server certificate.

rem Restart the Octopus Server service 
echo Restarting the Octopus Server service...
Octopus.Server.exe service --instance OctopusServer --restart
echo Successfully completed restarting the Octopus Server service.
