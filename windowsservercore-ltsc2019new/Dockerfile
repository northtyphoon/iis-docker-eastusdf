FROM mcr.microsoft.com/windows/servercore:ltsc2019

COPY check-baseimage.ps1 /inetpub/wwwroot/

RUN powershell -File /inetpub/wwwroot/check-baseimage.ps1
