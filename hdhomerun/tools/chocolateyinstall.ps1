﻿$ErrorActionPreference = 'Stop'
$packageName= 'hdhomerun-view'
$softwareName = 'HDHomeRun*'
$installerType = 'EXE'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'http://download.silicondust.com/hdhomerun/hdhomerun_windows_20161107b.exe' 
$checksum   = 'A7BAE50C286EF5BFC97C1567402B837D91199FAE18AFC99C1A22E55B32743E09'
$silentArgs = '/quiet /qn /norestart'
$validExitCodes= @(0, 3010, 1641)

$packageArgs = @{
  packageName   = $packageName
  fileType      = $installerType
  url           = $url
  validExitCodes= $validExitCodes
  silentArgs    = $silentArgs
  softwareName  = $softwareName
  checksum      = $checksum
  checksumType  = 'sha256' 
}

Install-ChocolateyPackage @packageArgs  
  
