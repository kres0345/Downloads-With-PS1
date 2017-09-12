#The Download Script
new-item "c:\Users\$env:UserName\Desktop\Downloaded" -itemtype directory
$uri = "http://download1322.mediafire.com/0bdcu8haf2rg/d76ppqzsc3spw8c/BSOD+fixer+by+Kresten.zip"
$out = "c:\Users\$env:UserName\Desktop\Downloaded\TheZip.zip"
Invoke-WebRequest -Uri $uri -OutFile $out
& $out