@echo off

REM Assign the value random password to the password variable
setlocal ENABLEEXTENSIONS ENABLEDELAYEDEXPANSION
set alfanum=ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789

set rustdesk_pw='support123'


REM Get your config string from your Web portal and Fill Below
set rustdesk_cfg="configstring"

REM ############################### Please Do Not Edit Below This Line #########################################

if not exist C:\Temp\ md C:\Temp\
cd C:\Temp\

curl -L "https://github.com/testdev007-coder/mydesk/releases/download/nightly/rustdesk-1.2.3-x86_64.exe" -o rustdesk.exe

rustdesk.exe --silent-install
timeout /t 20
echo ...............................................

cd "C:\Program Files\RustDesk\"
rustdesk.exe --install-service
timeout /t 20
echo ...............................................

rustdesk.exe --config %rustdesk_cfg%

rustdesk.exe --password %rustdesk_pw%

echo ...............................................
REM Show the value of the ID Variable

REM Show the value of the Password Variable
echo Password: %rustdesk_pw%
echo ...............................................
