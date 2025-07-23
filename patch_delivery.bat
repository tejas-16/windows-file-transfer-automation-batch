@echo off
set REMOTE USER=prodadm

set REMOTE HOST=de01c4xr

set BASE REMOTE_PATH=/archive/rel4.60/pc/2021/preprod

set/p DELIVERY_FOLDER Enter delivery folder name (e.g., PR_1234):

set REMOTE_PATH=%BASE_REMOTE_PATH%/%DELIVERY_FOLDER%

set LOCAL PATH=D:\Received

echo Copying from %REMOTE_USER%@%REMOTE_HOST%:%REMOTE_PATH% to %LOCAL_PATH% D:\Received\pscp.exe - %REMOTE_USER%@%REMOTE_HOST%:%REMOTE_PATH% %LOCAL_PATH%
pause
