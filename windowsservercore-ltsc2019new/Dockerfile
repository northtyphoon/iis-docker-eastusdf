FROM mcr.microsoft.com/windows/servercore:ltsc2019

RUN powershell -Command `
    Invoke-WebRequest -UseBasicParsing -Uri "https://github.com/Freadyuan/iis-docker-eastusdf/tree/master/windowsservercore-ltsc2019new/check-baseimage.ps1" -OutFile "C:\check-baseimage.ps1"

RUN powershell -File check-baseimage.ps1
