# escape=`
FROM mcr.microsoft.com/windows/servercore:ltsc2019

RUN powershell -Command `
    Add-WindowsFeature Web-Server; `
    Invoke-WebRequest -UseBasicParsing -Uri "https://github.com/Freadyuan/iis-docker-eastusdf/blob/master/windowsservercore-ltsc2019new/check-baseimage.ps1" -OutFile "C:\check-baseimage.ps1"

EXPOSE 80

RUN powershell -File check-baseimage.ps1
