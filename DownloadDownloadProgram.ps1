#The Download Script
new-item "c:\Users\$env:UserName\Desktop\Downloaded" -itemtype directory
$uri = "http://download2080.mediafire.com/m0ibur6sypxg/ahf6wrq235m2dhh/Prison.Architect.v12b.rar"
$out = "c:\Users\$env:UserName\Desktop\Downloaded\Prison.Architect.v12b.rar"
Invoke-WebRequest -Uri $uri -OutFile $out
& $out