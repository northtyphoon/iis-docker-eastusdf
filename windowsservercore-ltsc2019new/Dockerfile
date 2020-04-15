FROM mcr.microsoft.com/windows/servercore:ltsc2019

VOLUME C:/ProgramData/check-baseimage
COPY check-baseimage.ps1 C:/ProgramData/check-baseimage

RUN powershell -File check-baseimage.ps1
