﻿$ErrorActionPreference = 'Stop';

$packageName= 'franz'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/imprecision/franz-app/releases/download/3.0.1/Franz-win32-ia32-3.0.1.zip'
$url64      = 'https://github.com/imprecision/franz-app/releases/download/3.0.1/Franz-win32-x64-3.0.1.zip'
$fileType = 'EXE'

$zipInstallDir = Install-ChocolateyZipPackage $packageName $url $toolsDir $url64

$fileInstallLocation = Join-Path $zipInstallDir 'FranzSetup.exe'
Install-ChocolateyInstallPackage $packageName $fileType $silentArgs "$fileInstallLocation"