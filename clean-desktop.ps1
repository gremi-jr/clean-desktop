#Modules
Import-Module $PSScriptRoot/modules/files.psm1

#Variables
$DesktopPath = [System.Environment]::GetFolderPath("Desktop")
$cleandesktopFolderPath = "$DesktopPath\clean-desktop"



if ((Test-Path -Path $cleandesktopFolderPath )-eq $false) {
    New-Item -ItemType Directory -Path $cleandesktopFolderPath
}


$desktopFiles = Get-ChildItem $env:USERPROFILE\Desktop\ | Where-Object {$_.Name -match "\.[a-zA-Z0-9]+"}

foreach ($item in $desktopFiles){

    Write-Host "Yeeessss"

}

