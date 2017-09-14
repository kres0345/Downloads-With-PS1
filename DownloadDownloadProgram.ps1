#The Download Script
new-item "c:\Users\$env:UserName\Desktop\Downloaded" -itemtype directory
$uri = "http://download1592.mediafire.com/8sucfskkw9fg/ahf6wrq235m2dhh/Prison.Architect.v12b.rar"
$out = "c:\Users\$env:UserName\Desktop\Downloaded\Prison.Architect.v12b.rar"
Invoke-WebRequest -Uri $uri -OutFile $out
& $out