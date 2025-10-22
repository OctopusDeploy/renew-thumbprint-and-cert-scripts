@echo off
rem Run this script in an elevated console window

rem Run on *each* Windows Listening Tentacle VM

rem Trust new Octopus Server thumbprint
echo Change folder to C:\Program Files\Octopus Deploy\Tentacle
cd "C:\Program Files\Octopus Deploy\Tentacle"

echo Trust the new Octopus Server certificate and thumbprint...
Tentacle.exe configure --trust="<new-octopus-server-thumbprint>"
echo Successfully completed trusting the new Octopus Server certificate and thumbprint.

rem Restart the Tentacle agent service
echo Restarting the Tentacle service to let the new certificate take effect...
Tentacle.exe service --restart
echo Successfully completed restarting the Tentacle service.

rem Don't forget, you'll need to come back later and run the script to stop trusting the old certificate & thumbprint...
