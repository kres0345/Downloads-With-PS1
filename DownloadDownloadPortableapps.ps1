#The Download Script
new-item "c:\Users\$env:UserName\Desktop\Downloaded" -itemtype directory
$uri = "http://download940.mediafire.com/4v1xlyvihowg/89363gkhri7beb8/PortableApps.com_Platform_Setup_14.4.1.paf.exe"
$out = "c:\Users\$env:UserName\Desktop\Downloaded\PortableApps.com_Platform_Setup_14.4.1.paf.exe"
Invoke-WebRequest -Uri $uri -OutFile $out
& $out