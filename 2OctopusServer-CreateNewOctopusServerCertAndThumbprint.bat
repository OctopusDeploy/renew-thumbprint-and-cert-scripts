@echo off
rem Generate the new certificate

echo Change folder to C:\Program Files\Octopus Deploy\Octopus
cd "C:\Program Files\Octopus Deploy\Octopus"

echo Generate a new Octopus Server certificate...
Octopus.Server.exe new-certificate --instance OctopusServer --export-pfx="C:\Temp\newoctopusservercert.pfx" --pfx-password <new-cert-password>

echo Pausing so you can copy and save the new thumbprint shown on-screen, as you'll need it later...
pause

echo Successfully completed generating a new Octopus Server certificate and thumbprint.
