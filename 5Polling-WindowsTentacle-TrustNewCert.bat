@echo off
rem Run this script in an elevated console window AFTER you have added the new certificate / thumbprint to the Octopus Server.

rem ************************************
rem **There will be down time in comms to all your Polling Tentacles until after you have completed running this script.**
rem ************************************

rem Run on *each* Windows Polling Tentacle VM

rem Trust new Octopus Server thumbprint
echo Change folder to C:\Program Files\Octopus Deploy\Tentacle
cd "C:\Program Files\Octopus Deploy\Tentacle"

echo Trust the new Octopus Server certificate and thumbprint...
Tentacle.exe update-trust --oldThumbprint "1111111111111111111111111111111111111111" --newThumbprint "1234567890123456789012345678901234567890"
echo Successfully completed trusting the new Octopus Server certificate and thumbprint.

rem Restart the Tentacle agent service
echo Restarting the Tentacle service to let the new certificate take effect...
Tentacle.exe service --restart
echo Successfully completed restarting the Tentacle service.

