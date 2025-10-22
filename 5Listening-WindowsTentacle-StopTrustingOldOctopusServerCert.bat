@echo off
rem Run this script in an elevated console window

rem Run on *each* Windows Listening Tentacle VM

rem Stop trusting the old certificate
echo Change folder to C:\Program Files\Octopus Deploy\Tentacle
cd "C:\Program Files\Octopus Deploy\Tentacle"

echo Stop trusting the old Octopus Server certificate...
Tentacle.exe configure --instance Tentacle --remove-trust <old-thumbprint>
echo Successfully completed removing the old Octopus Server certificate

rem Restart the Tentacle service
echo Restarting the Tentacle service...
Tentacle.exe service --instance Tentacle --restart
echo Successfully completed restarting the Tentacle service
